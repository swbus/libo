# -*- Mode: makefile-gmake; tab-width: 4; indent-tabs-mode: t -*-
#
# This file is part of the LibreOffice project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

$(eval $(call gb_AllLangHelp_AllLangHelp,swriter))

$(eval $(call gb_AllLangHelp_set_treefile,swriter,helpcontent2/source/auxiliary/swriter))

$(eval $(call gb_AllLangHelp_use_linked_modules,swriter,\
	schart \
	shared \
))

$(eval $(call gb_AllLangHelp_add_helpfiles,swriter,\
    helpcontent2/source/text/swriter/00/00000004 \
    helpcontent2/source/text/swriter/00/00000401 \
    helpcontent2/source/text/swriter/00/00000402 \
    helpcontent2/source/text/swriter/00/00000403 \
    helpcontent2/source/text/swriter/00/00000404 \
    helpcontent2/source/text/swriter/00/00000405 \
    helpcontent2/source/text/swriter/00/00000406 \
    helpcontent2/source/text/swriter/01/01120000 \
    helpcontent2/source/text/swriter/01/01150000 \
    helpcontent2/source/text/swriter/01/01160100 \
    helpcontent2/source/text/swriter/01/01160200 \
    helpcontent2/source/text/swriter/01/01160300 \
    helpcontent2/source/text/swriter/01/01160400 \
    helpcontent2/source/text/swriter/01/01160500 \
    helpcontent2/source/text/swriter/01/02110000 \
    helpcontent2/source/text/swriter/01/02110100 \
    helpcontent2/source/text/swriter/01/02120000 \
    helpcontent2/source/text/swriter/01/02120100 \
    helpcontent2/source/text/swriter/01/02130000 \
    helpcontent2/source/text/swriter/01/02140000 \
    helpcontent2/source/text/swriter/01/02150000 \
    helpcontent2/source/text/swriter/01/02160000 \
    helpcontent2/source/text/swriter/01/02170000 \
    helpcontent2/source/text/swriter/01/03050000 \
    helpcontent2/source/text/swriter/01/03070000 \
    helpcontent2/source/text/swriter/01/03080000 \
    helpcontent2/source/text/swriter/01/03090000 \
    helpcontent2/source/text/swriter/01/03100000 \
    helpcontent2/source/text/swriter/01/03120000 \
    helpcontent2/source/text/swriter/01/03130000 \
    helpcontent2/source/text/swriter/01/03140000 \
    helpcontent2/source/text/swriter/01/04010000 \
    helpcontent2/source/text/swriter/01/04020000 \
    helpcontent2/source/text/swriter/01/04020100 \
    helpcontent2/source/text/swriter/01/04020200 \
    helpcontent2/source/text/swriter/01/04030000 \
    helpcontent2/source/text/swriter/01/04040000 \
    helpcontent2/source/text/swriter/01/04060000 \
    helpcontent2/source/text/swriter/01/04060100 \
    helpcontent2/source/text/swriter/01/04070000 \
    helpcontent2/source/text/swriter/01/04070100 \
    helpcontent2/source/text/swriter/01/04070200 \
    helpcontent2/source/text/swriter/01/04070300 \
    helpcontent2/source/text/swriter/01/04090000 \
    helpcontent2/source/text/swriter/01/04090001 \
    helpcontent2/source/text/swriter/01/04090002 \
    helpcontent2/source/text/swriter/01/04090003 \
    helpcontent2/source/text/swriter/01/04090004 \
    helpcontent2/source/text/swriter/01/04090005 \
    helpcontent2/source/text/swriter/01/04090006 \
    helpcontent2/source/text/swriter/01/04090007 \
    helpcontent2/source/text/swriter/01/04090100 \
    helpcontent2/source/text/swriter/01/04090200 \
    helpcontent2/source/text/swriter/01/04120000 \
    helpcontent2/source/text/swriter/01/04120100 \
    helpcontent2/source/text/swriter/01/04120200 \
    helpcontent2/source/text/swriter/01/04120201 \
    helpcontent2/source/text/swriter/01/04120210 \
    helpcontent2/source/text/swriter/01/04120211 \
    helpcontent2/source/text/swriter/01/04120212 \
    helpcontent2/source/text/swriter/01/04120213 \
    helpcontent2/source/text/swriter/01/04120214 \
    helpcontent2/source/text/swriter/01/04120215 \
    helpcontent2/source/text/swriter/01/04120216 \
    helpcontent2/source/text/swriter/01/04120217 \
    helpcontent2/source/text/swriter/01/04120219 \
    helpcontent2/source/text/swriter/01/04120220 \
    helpcontent2/source/text/swriter/01/04120221 \
    helpcontent2/source/text/swriter/01/04120222 \
    helpcontent2/source/text/swriter/01/04120223 \
    helpcontent2/source/text/swriter/01/04120224 \
    helpcontent2/source/text/swriter/01/04120225 \
    helpcontent2/source/text/swriter/01/04120226 \
    helpcontent2/source/text/swriter/01/04120227 \
    helpcontent2/source/text/swriter/01/04120229 \
    helpcontent2/source/text/swriter/01/04120250 \
    helpcontent2/source/text/swriter/01/04120300 \
    helpcontent2/source/text/swriter/01/04130000 \
    helpcontent2/source/text/swriter/01/04130100 \
    helpcontent2/source/text/swriter/01/04150000 \
    helpcontent2/source/text/swriter/01/04180400 \
    helpcontent2/source/text/swriter/01/04190000 \
    helpcontent2/source/text/swriter/01/04200000 \
    helpcontent2/source/text/swriter/01/04220000 \
    helpcontent2/source/text/swriter/01/04230000 \
    helpcontent2/source/text/swriter/01/04990000 \
    helpcontent2/source/text/swriter/01/05030200 \
    helpcontent2/source/text/swriter/01/05030400 \
    helpcontent2/source/text/swriter/01/05030800 \
    helpcontent2/source/text/swriter/01/05040000 \
    helpcontent2/source/text/swriter/01/05040500 \
    helpcontent2/source/text/swriter/01/05040501 \
    helpcontent2/source/text/swriter/01/05040600 \
    helpcontent2/source/text/swriter/01/05040700 \
    helpcontent2/source/text/swriter/01/05040800 \
    helpcontent2/source/text/swriter/01/05060000 \
    helpcontent2/source/text/swriter/01/05060100 \
    helpcontent2/source/text/swriter/01/05060200 \
    helpcontent2/source/text/swriter/01/05060201 \
    helpcontent2/source/text/swriter/01/05060300 \
    helpcontent2/source/text/swriter/01/05060700 \
    helpcontent2/source/text/swriter/01/05060800 \
    helpcontent2/source/text/swriter/01/05060900 \
    helpcontent2/source/text/swriter/01/05080000 \
    helpcontent2/source/text/swriter/01/05090000 \
    helpcontent2/source/text/swriter/01/05090100 \
    helpcontent2/source/text/swriter/01/05090200 \
    helpcontent2/source/text/swriter/01/05090201 \
    helpcontent2/source/text/swriter/01/05090300 \
    helpcontent2/source/text/swriter/01/05100000 \
    helpcontent2/source/text/swriter/01/05100300 \
    helpcontent2/source/text/swriter/01/05100400 \
    helpcontent2/source/text/swriter/01/05110000 \
    helpcontent2/source/text/swriter/01/05110100 \
    helpcontent2/source/text/swriter/01/05110200 \
    helpcontent2/source/text/swriter/01/05110300 \
    helpcontent2/source/text/swriter/01/05110500 \
    helpcontent2/source/text/swriter/01/05120000 \
    helpcontent2/source/text/swriter/01/05120100 \
    helpcontent2/source/text/swriter/01/05120200 \
    helpcontent2/source/text/swriter/01/05120300 \
    helpcontent2/source/text/swriter/01/05120400 \
    helpcontent2/source/text/swriter/01/05120500 \
    helpcontent2/source/text/swriter/01/05130000 \
    helpcontent2/source/text/swriter/01/05130002 \
    helpcontent2/source/text/swriter/01/05130004 \
    helpcontent2/source/text/swriter/01/05130100 \
    helpcontent2/source/text/swriter/01/05140000 \
    helpcontent2/source/text/swriter/01/05150000 \
    helpcontent2/source/text/swriter/01/05150100 \
    helpcontent2/source/text/swriter/01/05150101 \
    helpcontent2/source/text/swriter/01/05150104 \
    helpcontent2/source/text/swriter/01/05150200 \
    helpcontent2/source/text/swriter/01/05150300 \
    helpcontent2/source/text/swriter/01/05170000 \
    helpcontent2/source/text/swriter/01/05190000 \
    helpcontent2/source/text/swriter/01/05200000 \
    helpcontent2/source/text/swriter/01/05990000 \
    helpcontent2/source/text/swriter/01/06030000 \
    helpcontent2/source/text/swriter/01/06040000 \
    helpcontent2/source/text/swriter/01/06060000 \
    helpcontent2/source/text/swriter/01/06060100 \
    helpcontent2/source/text/swriter/01/06080000 \
    helpcontent2/source/text/swriter/01/06080100 \
    helpcontent2/source/text/swriter/01/06080200 \
    helpcontent2/source/text/swriter/01/06090000 \
    helpcontent2/source/text/swriter/01/06100000 \
    helpcontent2/source/text/swriter/01/06110000 \
    helpcontent2/source/text/swriter/01/06120000 \
    helpcontent2/source/text/swriter/01/06160000 \
    helpcontent2/source/text/swriter/01/06170000 \
    helpcontent2/source/text/swriter/01/06180000 \
    helpcontent2/source/text/swriter/01/06190000 \
    helpcontent2/source/text/swriter/01/06200000 \
    helpcontent2/source/text/swriter/01/06210000 \
    helpcontent2/source/text/swriter/01/06220000 \
    helpcontent2/source/text/swriter/01/06990000 \
    helpcontent2/source/text/swriter/01/format_object \
    helpcontent2/source/text/swriter/01/mailmerge00 \
    helpcontent2/source/text/swriter/01/mailmerge01 \
    helpcontent2/source/text/swriter/01/mailmerge02 \
    helpcontent2/source/text/swriter/01/mailmerge03 \
    helpcontent2/source/text/swriter/01/mailmerge04 \
    helpcontent2/source/text/swriter/01/mailmerge05 \
    helpcontent2/source/text/swriter/01/mailmerge06 \
    helpcontent2/source/text/swriter/01/mailmerge07 \
    helpcontent2/source/text/swriter/01/mailmerge08 \
    helpcontent2/source/text/swriter/01/mm_copyto \
    helpcontent2/source/text/swriter/01/mm_cusaddfie \
    helpcontent2/source/text/swriter/01/mm_cusaddlis \
    helpcontent2/source/text/swriter/01/mm_cusgrelin \
    helpcontent2/source/text/swriter/01/mm_emabod \
    helpcontent2/source/text/swriter/01/mm_finent \
    helpcontent2/source/text/swriter/01/mm_matfie \
    helpcontent2/source/text/swriter/01/mm_newaddblo \
    helpcontent2/source/text/swriter/01/mm_newaddlis \
    helpcontent2/source/text/swriter/01/mm_seladdblo \
    helpcontent2/source/text/swriter/01/mm_seladdlis \
    helpcontent2/source/text/swriter/01/mm_seltab \
    helpcontent2/source/text/swriter/01/selection_mode \
    helpcontent2/source/text/swriter/02/02110000 \
    helpcontent2/source/text/swriter/02/03210000 \
    helpcontent2/source/text/swriter/02/03220000 \
    helpcontent2/source/text/swriter/02/04090000 \
    helpcontent2/source/text/swriter/02/04100000 \
    helpcontent2/source/text/swriter/02/04220000 \
    helpcontent2/source/text/swriter/02/04230000 \
    helpcontent2/source/text/swriter/02/04240000 \
    helpcontent2/source/text/swriter/02/04250000 \
    helpcontent2/source/text/swriter/02/06040000 \
    helpcontent2/source/text/swriter/02/06070000 \
    helpcontent2/source/text/swriter/02/06080000 \
    helpcontent2/source/text/swriter/02/06090000 \
    helpcontent2/source/text/swriter/02/06120000 \
    helpcontent2/source/text/swriter/02/06130000 \
    helpcontent2/source/text/swriter/02/06140000 \
    helpcontent2/source/text/swriter/02/08010000 \
    helpcontent2/source/text/swriter/02/08080000 \
    helpcontent2/source/text/swriter/02/10010000 \
    helpcontent2/source/text/swriter/02/10020000 \
    helpcontent2/source/text/swriter/02/10030000 \
    helpcontent2/source/text/swriter/02/10050000 \
    helpcontent2/source/text/swriter/02/10070000 \
    helpcontent2/source/text/swriter/02/10080000 \
    helpcontent2/source/text/swriter/02/10090000 \
    helpcontent2/source/text/swriter/02/10110000 \
    helpcontent2/source/text/swriter/02/14010000 \
    helpcontent2/source/text/swriter/02/14020000 \
    helpcontent2/source/text/swriter/02/14030000 \
    helpcontent2/source/text/swriter/02/14040000 \
    helpcontent2/source/text/swriter/02/14050000 \
    helpcontent2/source/text/swriter/02/18010000 \
    helpcontent2/source/text/swriter/02/18030000 \
    helpcontent2/source/text/swriter/02/18030100 \
    helpcontent2/source/text/swriter/02/18030200 \
    helpcontent2/source/text/swriter/02/18030300 \
    helpcontent2/source/text/swriter/02/18030400 \
    helpcontent2/source/text/swriter/02/18030500 \
    helpcontent2/source/text/swriter/02/18030600 \
    helpcontent2/source/text/swriter/02/18030700 \
    helpcontent2/source/text/swriter/02/18120000 \
    helpcontent2/source/text/swriter/02/18130000 \
    helpcontent2/source/text/swriter/02/19010000 \
    helpcontent2/source/text/swriter/02/19020000 \
    helpcontent2/source/text/swriter/02/19030000 \
    helpcontent2/source/text/swriter/02/19040000 \
    helpcontent2/source/text/swriter/02/19050000 \
    helpcontent2/source/text/swriter/02/word_count_stb \
    helpcontent2/source/text/swriter/04/01020000 \
    helpcontent2/source/text/swriter/guide/anchor_object \
    helpcontent2/source/text/swriter/guide/arrange_chapters \
    helpcontent2/source/text/swriter/guide/auto_numbering \
    helpcontent2/source/text/swriter/guide/auto_off \
    helpcontent2/source/text/swriter/guide/auto_spellcheck \
    helpcontent2/source/text/swriter/guide/autocorr_except \
    helpcontent2/source/text/swriter/guide/autotext \
    helpcontent2/source/text/swriter/guide/background \
    helpcontent2/source/text/swriter/guide/border_character \
    helpcontent2/source/text/swriter/guide/border_object \
    helpcontent2/source/text/swriter/guide/border_page \
    helpcontent2/source/text/swriter/guide/borders \
    helpcontent2/source/text/swriter/guide/calculate \
    helpcontent2/source/text/swriter/guide/calculate_clipboard \
    helpcontent2/source/text/swriter/guide/calculate_intable \
    helpcontent2/source/text/swriter/guide/calculate_intext \
    helpcontent2/source/text/swriter/guide/calculate_intext2 \
    helpcontent2/source/text/swriter/guide/calculate_multitable \
    helpcontent2/source/text/swriter/guide/captions \
    helpcontent2/source/text/swriter/guide/captions_numbers \
    helpcontent2/source/text/swriter/guide/change_header \
    helpcontent2/source/text/swriter/guide/chapter_numbering \
    helpcontent2/source/text/swriter/guide/conditional_text \
    helpcontent2/source/text/swriter/guide/conditional_text2 \
    helpcontent2/source/text/swriter/guide/delete_from_dict \
    helpcontent2/source/text/swriter/guide/dragdroptext \
    helpcontent2/source/text/swriter/guide/even_odd_sdw \
    helpcontent2/source/text/swriter/guide/field_convert \
    helpcontent2/source/text/swriter/guide/fields \
    helpcontent2/source/text/swriter/guide/fields_date \
    helpcontent2/source/text/swriter/guide/fields_enter \
    helpcontent2/source/text/swriter/guide/fields_userdata \
    helpcontent2/source/text/swriter/guide/finding \
    helpcontent2/source/text/swriter/guide/footer_nextpage \
    helpcontent2/source/text/swriter/guide/footer_pagenumber \
    helpcontent2/source/text/swriter/guide/footnote_usage \
    helpcontent2/source/text/swriter/guide/footnote_with_line \
    helpcontent2/source/text/swriter/guide/form_letters_main \
    helpcontent2/source/text/swriter/guide/globaldoc \
    helpcontent2/source/text/swriter/guide/globaldoc_howtos \
    helpcontent2/source/text/swriter/guide/header_footer \
    helpcontent2/source/text/swriter/guide/header_pagestyles \
    helpcontent2/source/text/swriter/guide/header_with_chapter \
    helpcontent2/source/text/swriter/guide/header_with_line \
    helpcontent2/source/text/swriter/guide/hidden_text \
    helpcontent2/source/text/swriter/guide/hidden_text_display \
    helpcontent2/source/text/swriter/guide/hyperlinks \
    helpcontent2/source/text/swriter/guide/hyphen_prevent \
    helpcontent2/source/text/swriter/guide/indenting \
    helpcontent2/source/text/swriter/guide/indices_delete \
    helpcontent2/source/text/swriter/guide/indices_edit \
    helpcontent2/source/text/swriter/guide/indices_enter \
    helpcontent2/source/text/swriter/guide/indices_form \
    helpcontent2/source/text/swriter/guide/indices_index \
    helpcontent2/source/text/swriter/guide/indices_literature \
    helpcontent2/source/text/swriter/guide/indices_multidoc \
    helpcontent2/source/text/swriter/guide/indices_toc \
    helpcontent2/source/text/swriter/guide/indices_userdef \
    helpcontent2/source/text/swriter/guide/insert_beforetable \
    helpcontent2/source/text/swriter/guide/insert_graphic \
    helpcontent2/source/text/swriter/guide/insert_graphic_dialog \
    helpcontent2/source/text/swriter/guide/insert_graphic_fromchart \
    helpcontent2/source/text/swriter/guide/insert_graphic_fromdraw \
    helpcontent2/source/text/swriter/guide/insert_graphic_gallery \
    helpcontent2/source/text/swriter/guide/insert_graphic_scan \
    helpcontent2/source/text/swriter/guide/insert_tab_innumbering \
    helpcontent2/source/text/swriter/guide/join_numbered_lists \
    helpcontent2/source/text/swriter/guide/jump2statusbar \
    helpcontent2/source/text/swriter/guide/keyboard \
    helpcontent2/source/text/swriter/guide/load_styles \
    helpcontent2/source/text/swriter/guide/main \
    helpcontent2/source/text/swriter/guide/navigator \
    helpcontent2/source/text/swriter/guide/nonprintable_text \
    helpcontent2/source/text/swriter/guide/number_date_conv \
    helpcontent2/source/text/swriter/guide/number_sequence \
    helpcontent2/source/text/swriter/guide/numbering_lines \
    helpcontent2/source/text/swriter/guide/numbering_paras \
    helpcontent2/source/text/swriter/guide/page_break \
    helpcontent2/source/text/swriter/guide/pagebackground \
    helpcontent2/source/text/swriter/guide/pagenumbers \
    helpcontent2/source/text/swriter/guide/pageorientation \
    helpcontent2/source/text/swriter/guide/pagestyles \
    helpcontent2/source/text/swriter/guide/print_brochure \
    helpcontent2/source/text/swriter/guide/print_preview \
    helpcontent2/source/text/swriter/guide/print_small \
    helpcontent2/source/text/swriter/guide/printer_tray \
    helpcontent2/source/text/swriter/guide/printing_order \
    helpcontent2/source/text/swriter/guide/protection \
    helpcontent2/source/text/swriter/guide/references \
    helpcontent2/source/text/swriter/guide/references_modify \
    helpcontent2/source/text/swriter/guide/registertrue \
    helpcontent2/source/text/swriter/guide/removing_line_breaks \
    helpcontent2/source/text/swriter/guide/reset_format \
    helpcontent2/source/text/swriter/guide/resize_navigator \
    helpcontent2/source/text/swriter/guide/ruler \
    helpcontent2/source/text/swriter/guide/search_regexp \
    helpcontent2/source/text/swriter/guide/section_edit \
    helpcontent2/source/text/swriter/guide/section_insert \
    helpcontent2/source/text/swriter/guide/sections \
    helpcontent2/source/text/swriter/guide/send2html \
    helpcontent2/source/text/swriter/guide/shortcut_writing \
    helpcontent2/source/text/swriter/guide/smarttags \
    helpcontent2/source/text/swriter/guide/spellcheck_dialog \
    helpcontent2/source/text/swriter/guide/stylist_fillformat \
    helpcontent2/source/text/swriter/guide/stylist_fromselect \
    helpcontent2/source/text/swriter/guide/stylist_update \
    helpcontent2/source/text/swriter/guide/subscript \
    helpcontent2/source/text/swriter/guide/table_cellmerge \
    helpcontent2/source/text/swriter/guide/table_cells \
    helpcontent2/source/text/swriter/guide/table_delete \
    helpcontent2/source/text/swriter/guide/table_insert \
    helpcontent2/source/text/swriter/guide/table_repeat_multiple_headers \
    helpcontent2/source/text/swriter/guide/table_select \
    helpcontent2/source/text/swriter/guide/table_sizing \
    helpcontent2/source/text/swriter/guide/tablemode \
    helpcontent2/source/text/swriter/guide/template_create \
    helpcontent2/source/text/swriter/guide/template_default \
    helpcontent2/source/text/swriter/guide/templates_styles \
    helpcontent2/source/text/swriter/guide/text_animation \
    helpcontent2/source/text/swriter/guide/text_capital \
    helpcontent2/source/text/swriter/guide/text_centervert \
    helpcontent2/source/text/swriter/guide/text_direct_cursor \
    helpcontent2/source/text/swriter/guide/text_emphasize \
    helpcontent2/source/text/swriter/guide/text_frame \
    helpcontent2/source/text/swriter/guide/text_nav_keyb \
    helpcontent2/source/text/swriter/guide/text_rotate \
    helpcontent2/source/text/swriter/guide/textdoc_inframe \
    helpcontent2/source/text/swriter/guide/using_hyphen \
    helpcontent2/source/text/swriter/guide/using_numbered_lists \
    helpcontent2/source/text/swriter/guide/using_numbered_lists2 \
    helpcontent2/source/text/swriter/guide/using_numbering \
    helpcontent2/source/text/swriter/guide/using_thesaurus \
    helpcontent2/source/text/swriter/guide/word_completion \
    helpcontent2/source/text/swriter/guide/word_completion_adjust \
    helpcontent2/source/text/swriter/guide/words_count \
    helpcontent2/source/text/swriter/guide/wrap \
    helpcontent2/source/text/swriter/librelogo/LibreLogo \
    helpcontent2/source/text/swriter/main0000 \
    helpcontent2/source/text/swriter/main0100 \
    helpcontent2/source/text/swriter/main0101 \
    helpcontent2/source/text/swriter/main0102 \
    helpcontent2/source/text/swriter/main0103 \
    helpcontent2/source/text/swriter/main0104 \
    helpcontent2/source/text/swriter/main0105 \
    helpcontent2/source/text/swriter/main0106 \
    helpcontent2/source/text/swriter/main0107 \
    helpcontent2/source/text/swriter/main0110 \
    helpcontent2/source/text/swriter/main0115 \
    helpcontent2/source/text/swriter/main0200 \
    helpcontent2/source/text/swriter/main0202 \
    helpcontent2/source/text/swriter/main0203 \
    helpcontent2/source/text/swriter/main0204 \
    helpcontent2/source/text/swriter/main0205 \
    helpcontent2/source/text/swriter/main0206 \
    helpcontent2/source/text/swriter/main0208 \
    helpcontent2/source/text/swriter/main0210 \
    helpcontent2/source/text/swriter/main0213 \
    helpcontent2/source/text/swriter/main0214 \
    helpcontent2/source/text/swriter/main0215 \
    helpcontent2/source/text/swriter/main0216 \
    helpcontent2/source/text/swriter/main0220 \
    helpcontent2/source/text/swriter/main0503 \
    helpcontent2/source/text/swriter/classificationbar \
    helpcontent2/source/text/swriter/menu/insert_header_footer \
    helpcontent2/source/text/swriter/menu/insert_footnote_endnote \
    helpcontent2/source/text/swriter/menu/insert_frame \
))

# vim: set noet sw=4 ts=4: