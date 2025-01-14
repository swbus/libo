/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
/*
 * This file is part of the LibreOffice project.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

varying float fade_factor; // 0->1 fade factor used for AA
uniform vec4 color;

uniform float line_width;
uniform float feather;

#define TYPE_NORMAL 0
#define TYPE_LINE   1

uniform int type;

void main()
{
    float alpha = 1.0;

    if (type == TYPE_LINE)
    {
        float start = (line_width / 2.0) - feather; // where we start to apply alpha
        float end = (line_width / 2.0) + feather; // where we end to apply alpha

        // Calculate the multiplier so we can transform the 0->1 fade factor
        // to take feather and line width into account.
        float multiplied = start == end ? 1.0 : 1.0 / (1.0 - (start / end));

        float dist = (1.0 - abs(fade_factor)) * multiplied;

        alpha = clamp(dist, 0.0, 1.0);
    }

    vec4 result_color = color;
    result_color.a = result_color.a * alpha;

    gl_FragColor = result_color;
}

/* vim:set shiftwidth=4 softtabstop=4 expandtab: */
