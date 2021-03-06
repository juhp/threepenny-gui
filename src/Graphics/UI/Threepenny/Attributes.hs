module Graphics.UI.Threepenny.Attributes (
    -- * Synopsis
    -- | Element Attributes, for convenience.
    
    -- * Documentation
    action, align, alink, alt, altcode, archive,
    background, base, bgcolor, border, bordercolor,
    cellpadding, cellspacing, checked, class_, clear_, code, codebase,
    color, cols, colspan, compact, content, coords,
    enctype, face, frameborder, height, href, hspace, httpequiv,
    id_, ismap, lang, link, marginheight, marginwidth, maxlength, method, multiple,
    name, nohref, noresize, noshade, nowrap,
    rel, rev, rows, rowspan, rules,
    scrolling, selected, shape, size, src, start,
    target, text_, type_, usemap, valign, version, vlink, vspace, width,
    ) where


import Graphics.UI.Threepenny.Core

{-----------------------------------------------------------------------------
    Attributes
------------------------------------------------------------------------------}
strAttr :: String -> WriteAttr Element String
strAttr name = mkWriteAttr (set' (attr name))

intAttr :: String -> WriteAttr Element Int
intAttr name = mkWriteAttr (set' (attr name) . show)

emptyAttr :: String -> WriteAttr Element Bool
emptyAttr name = mkWriteAttr (set' (attr name) . f)
    where
    f True  = "1"
    f False = "0"

{-----------------------------------------------------------------------------
    Primitives
    
    Taken from the HTML library (BSD3 license)
    http://hackage.haskell.org/package/html
------------------------------------------------------------------------------}
action              =   strAttr "action"
align               =   strAttr "align"
alink               =   strAttr "alink"
alt                 =   strAttr "alt"
altcode             =   strAttr "altcode"
archive             =   strAttr "archive"
background          =   strAttr "background"
base                =   strAttr "base"
bgcolor             =   strAttr "bgcolor"
border              =   intAttr "border"
bordercolor         =   strAttr "bordercolor"
cellpadding         =   intAttr "cellpadding"
cellspacing         =   intAttr "cellspacing"
checked             = emptyAttr "checked"
clear_              =   strAttr "clear"
code                =   strAttr "code"
codebase            =   strAttr "codebase"
color               =   strAttr "color"
cols                =   strAttr "cols"
colspan             =   intAttr "colspan"
compact             = emptyAttr "compact"
content             =   strAttr "content"
coords              =   strAttr "coords"
enctype             =   strAttr "enctype"
face                =   strAttr "face"
frameborder         =   intAttr "frameborder"
height              =   intAttr "height"
href                =   strAttr "href"
hspace              =   intAttr "hspace"
httpequiv           =   strAttr "http-equiv"
id_                 =   strAttr "id"
ismap               = emptyAttr "ismap"
lang                =   strAttr "lang"
link                =   strAttr "link"
marginheight        =   intAttr "marginheight"
marginwidth         =   intAttr "marginwidth"
maxlength           =   intAttr "maxlength"
method              =   strAttr "method"
multiple            = emptyAttr "multiple"
name                =   strAttr "name"
nohref              = emptyAttr "nohref"
noresize            = emptyAttr "noresize"
noshade             = emptyAttr "noshade"
nowrap              = emptyAttr "nowrap"
rel                 =   strAttr "rel"
rev                 =   strAttr "rev"
rows                =   strAttr "rows"
rowspan             =   intAttr "rowspan"
rules               =   strAttr "rules"
scrolling           =   strAttr "scrolling"
selected            = emptyAttr "selected"
shape               =   strAttr "shape"
size                =   strAttr "size"
src                 =   strAttr "src"
start               =   intAttr "start"
target              =   strAttr "target"
text_               =   strAttr "text"
class_              =   strAttr "class"
type_               =   strAttr "type"
title               =   strAttr "title"
usemap              =   strAttr "usemap"
valign              =   strAttr "valign"
version             =   strAttr "version"
vlink               =   strAttr "vlink"
vspace              =   intAttr "vspace"
width               =   strAttr "width"
