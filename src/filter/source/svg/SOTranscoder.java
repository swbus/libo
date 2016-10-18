/*
 * This file is part of the LibreOffice project.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * This file incorporates work covered by the following license notice:
 *
 *   Licensed to the Apache Software Foundation (ASF) under one or more
 *   contributor license agreements. See the NOTICE file distributed
 *   with this work for additional information regarding copyright
 *   ownership. The ASF licenses this file to you under the Apache
 *   License, Version 2.0 (the "License"); you may not use this file
 *   except in compliance with the License. You may obtain a copy of
 *   the License at http://www.apache.org/licenses/LICENSE-2.0 .
 */

import java.io.*;
import org.apache.batik.transcoder.image.PNGTranscoder;
import org.apache.batik.transcoder.TranscoderInput;
import org.apache.batik.transcoder.TranscoderOutput;

public class SOTranscoder
{
    public static void main(String [] args) throws Exception
    {
        PNGTranscoder   aTranscoder = new PNGTranscoder();
        OutputStream    aOStm = new FileOutputStream( args[ 1 ] );

        aTranscoder.transcode( new TranscoderInput( new File( args[ 0 ] ).toURI().toURL().toString() ), new TranscoderOutput( aOStm ) );

        aOStm.flush();
        aOStm.close();
    }
}