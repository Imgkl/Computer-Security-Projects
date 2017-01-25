.class Lcom/genie_connect/android/utils/string/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/utils/string/Entities$IntHashMap;,
        Lcom/genie_connect/android/utils/string/Entities$BinaryEntityMap;,
        Lcom/genie_connect/android/utils/string/Entities$ArrayEntityMap;,
        Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;,
        Lcom/genie_connect/android/utils/string/Entities$TreeEntityMap;,
        Lcom/genie_connect/android/utils/string/Entities$HashEntityMap;,
        Lcom/genie_connect/android/utils/string/Entities$MapIntMap;,
        Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;,
        Lcom/genie_connect/android/utils/string/Entities$EntityMap;
    }
.end annotation


# static fields
.field private static final APOS_ARRAY:[[Ljava/lang/String;

.field private static final BASIC_ARRAY:[[Ljava/lang/String;

.field public static final HTML32:Lcom/genie_connect/android/utils/string/Entities;

.field public static final HTML40:Lcom/genie_connect/android/utils/string/Entities;

.field static final HTML40_ARRAY:[[Ljava/lang/String;

.field static final ISO8859_1_ARRAY:[[Ljava/lang/String;

.field public static final XML:Lcom/genie_connect/android/utils/string/Entities;


# instance fields
.field map:Lcom/genie_connect/android/utils/string/Entities$EntityMap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    new-array v0, v8, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "quot"

    aput-object v2, v1, v4

    const-string v2, "34"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "amp"

    aput-object v2, v1, v4

    const-string v2, "38"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "lt"

    aput-object v2, v1, v4

    const-string v2, "60"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "gt"

    aput-object v2, v1, v4

    const-string v2, "62"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    sput-object v0, Lcom/genie_connect/android/utils/string/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    .line 53
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "apos"

    aput-object v2, v1, v4

    const-string v2, "39"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/utils/string/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    .line 57
    const/16 v0, 0x60

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "nbsp"

    aput-object v2, v1, v4

    const-string v2, "160"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "iexcl"

    aput-object v2, v1, v4

    const-string v2, "161"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "cent"

    aput-object v2, v1, v4

    const-string v2, "162"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "pound"

    aput-object v2, v1, v4

    const-string v2, "163"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "curren"

    aput-object v2, v1, v4

    const-string v2, "164"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "yen"

    aput-object v3, v2, v4

    const-string v3, "165"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "brvbar"

    aput-object v3, v2, v4

    const-string v3, "166"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sect"

    aput-object v3, v2, v4

    const-string v3, "167"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uml"

    aput-object v3, v2, v4

    const-string v3, "168"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "copy"

    aput-object v3, v2, v4

    const-string v3, "169"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ordf"

    aput-object v3, v2, v4

    const-string v3, "170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "laquo"

    aput-object v3, v2, v4

    const-string v3, "171"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "not"

    aput-object v3, v2, v4

    const-string v3, "172"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "shy"

    aput-object v3, v2, v4

    const-string v3, "173"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "reg"

    aput-object v3, v2, v4

    const-string v3, "174"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "macr"

    aput-object v3, v2, v4

    const-string v3, "175"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "deg"

    aput-object v3, v2, v4

    const-string v3, "176"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "plusmn"

    aput-object v3, v2, v4

    const-string v3, "177"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sup2"

    aput-object v3, v2, v4

    const-string v3, "178"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sup3"

    aput-object v3, v2, v4

    const-string v3, "179"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "acute"

    aput-object v3, v2, v4

    const-string v3, "180"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "micro"

    aput-object v3, v2, v4

    const-string v3, "181"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "para"

    aput-object v3, v2, v4

    const-string v3, "182"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "middot"

    aput-object v3, v2, v4

    const-string v3, "183"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cedil"

    aput-object v3, v2, v4

    const-string v3, "184"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sup1"

    aput-object v3, v2, v4

    const-string v3, "185"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ordm"

    aput-object v3, v2, v4

    const-string v3, "186"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "raquo"

    aput-object v3, v2, v4

    const-string v3, "187"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frac14"

    aput-object v3, v2, v4

    const-string v3, "188"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frac12"

    aput-object v3, v2, v4

    const-string v3, "189"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frac34"

    aput-object v3, v2, v4

    const-string v3, "190"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iquest"

    aput-object v3, v2, v4

    const-string v3, "191"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Agrave"

    aput-object v3, v2, v4

    const-string v3, "192"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Aacute"

    aput-object v3, v2, v4

    const-string v3, "193"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Acirc"

    aput-object v3, v2, v4

    const-string v3, "194"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Atilde"

    aput-object v3, v2, v4

    const-string v3, "195"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Auml"

    aput-object v3, v2, v4

    const-string v3, "196"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Aring"

    aput-object v3, v2, v4

    const-string v3, "197"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AElig"

    aput-object v3, v2, v4

    const-string v3, "198"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ccedil"

    aput-object v3, v2, v4

    const-string v3, "199"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Egrave"

    aput-object v3, v2, v4

    const-string v3, "200"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Eacute"

    aput-object v3, v2, v4

    const-string v3, "201"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ecirc"

    aput-object v3, v2, v4

    const-string v3, "202"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Euml"

    aput-object v3, v2, v4

    const-string v3, "203"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Igrave"

    aput-object v3, v2, v4

    const-string v3, "204"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Iacute"

    aput-object v3, v2, v4

    const-string v3, "205"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Icirc"

    aput-object v3, v2, v4

    const-string v3, "206"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Iuml"

    aput-object v3, v2, v4

    const-string v3, "207"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ETH"

    aput-object v3, v2, v4

    const-string v3, "208"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ntilde"

    aput-object v3, v2, v4

    const-string v3, "209"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ograve"

    aput-object v3, v2, v4

    const-string v3, "210"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Oacute"

    aput-object v3, v2, v4

    const-string v3, "211"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ocirc"

    aput-object v3, v2, v4

    const-string v3, "212"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Otilde"

    aput-object v3, v2, v4

    const-string v3, "213"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ouml"

    aput-object v3, v2, v4

    const-string v3, "214"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "times"

    aput-object v3, v2, v4

    const-string v3, "215"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Oslash"

    aput-object v3, v2, v4

    const-string v3, "216"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ugrave"

    aput-object v3, v2, v4

    const-string v3, "217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Uacute"

    aput-object v3, v2, v4

    const-string v3, "218"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Ucirc"

    aput-object v3, v2, v4

    const-string v3, "219"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Uuml"

    aput-object v3, v2, v4

    const-string v3, "220"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Yacute"

    aput-object v3, v2, v4

    const-string v3, "221"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "THORN"

    aput-object v3, v2, v4

    const-string v3, "222"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "szlig"

    aput-object v3, v2, v4

    const-string v3, "223"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "agrave"

    aput-object v3, v2, v4

    const-string v3, "224"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aacute"

    aput-object v3, v2, v4

    const-string v3, "225"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "acirc"

    aput-object v3, v2, v4

    const-string v3, "226"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "atilde"

    aput-object v3, v2, v4

    const-string v3, "227"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "auml"

    aput-object v3, v2, v4

    const-string v3, "228"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aring"

    aput-object v3, v2, v4

    const-string v3, "229"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aelig"

    aput-object v3, v2, v4

    const-string v3, "230"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ccedil"

    aput-object v3, v2, v4

    const-string v3, "231"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "egrave"

    aput-object v3, v2, v4

    const-string v3, "232"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eacute"

    aput-object v3, v2, v4

    const-string v3, "233"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ecirc"

    aput-object v3, v2, v4

    const-string v3, "234"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "euml"

    aput-object v3, v2, v4

    const-string v3, "235"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "igrave"

    aput-object v3, v2, v4

    const-string v3, "236"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iacute"

    aput-object v3, v2, v4

    const-string v3, "237"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "icirc"

    aput-object v3, v2, v4

    const-string v3, "238"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iuml"

    aput-object v3, v2, v4

    const-string v3, "239"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eth"

    aput-object v3, v2, v4

    const-string v3, "240"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ntilde"

    aput-object v3, v2, v4

    const-string v3, "241"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ograve"

    aput-object v3, v2, v4

    const-string v3, "242"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oacute"

    aput-object v3, v2, v4

    const-string v3, "243"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ocirc"

    aput-object v3, v2, v4

    const-string v3, "244"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otilde"

    aput-object v3, v2, v4

    const-string v3, "245"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ouml"

    aput-object v3, v2, v4

    const-string v3, "246"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "divide"

    aput-object v3, v2, v4

    const-string v3, "247"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oslash"

    aput-object v3, v2, v4

    const-string v3, "248"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ugrave"

    aput-object v3, v2, v4

    const-string v3, "249"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uacute"

    aput-object v3, v2, v4

    const-string v3, "250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ucirc"

    aput-object v3, v2, v4

    const-string v3, "251"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uuml"

    aput-object v3, v2, v4

    const-string v3, "252"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "yacute"

    aput-object v3, v2, v4

    const-string v3, "253"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "thorn"

    aput-object v3, v2, v4

    const-string v3, "254"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "yuml"

    aput-object v3, v2, v4

    const-string v3, "255"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/utils/string/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    .line 157
    const/16 v0, 0x97

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "fnof"

    aput-object v2, v1, v4

    const-string v2, "402"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Alpha"

    aput-object v2, v1, v4

    const-string v2, "913"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Beta"

    aput-object v2, v1, v4

    const-string v2, "914"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Gamma"

    aput-object v2, v1, v4

    const-string v2, "915"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Delta"

    aput-object v2, v1, v4

    const-string v2, "916"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Epsilon"

    aput-object v3, v2, v4

    const-string v3, "917"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Zeta"

    aput-object v3, v2, v4

    const-string v3, "918"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Eta"

    aput-object v3, v2, v4

    const-string v3, "919"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Theta"

    aput-object v3, v2, v4

    const-string v3, "920"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Iota"

    aput-object v3, v2, v4

    const-string v3, "921"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Kappa"

    aput-object v3, v2, v4

    const-string v3, "922"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Lambda"

    aput-object v3, v2, v4

    const-string v3, "923"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Mu"

    aput-object v3, v2, v4

    const-string v3, "924"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Nu"

    aput-object v3, v2, v4

    const-string v3, "925"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Xi"

    aput-object v3, v2, v4

    const-string v3, "926"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Omicron"

    aput-object v3, v2, v4

    const-string v3, "927"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Pi"

    aput-object v3, v2, v4

    const-string v3, "928"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Rho"

    aput-object v3, v2, v4

    const-string v3, "929"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Sigma"

    aput-object v3, v2, v4

    const-string v3, "931"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Tau"

    aput-object v3, v2, v4

    const-string v3, "932"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Upsilon"

    aput-object v3, v2, v4

    const-string v3, "933"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Phi"

    aput-object v3, v2, v4

    const-string v3, "934"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Chi"

    aput-object v3, v2, v4

    const-string v3, "935"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Psi"

    aput-object v3, v2, v4

    const-string v3, "936"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Omega"

    aput-object v3, v2, v4

    const-string v3, "937"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "alpha"

    aput-object v3, v2, v4

    const-string v3, "945"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "beta"

    aput-object v3, v2, v4

    const-string v3, "946"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gamma"

    aput-object v3, v2, v4

    const-string v3, "947"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "delta"

    aput-object v3, v2, v4

    const-string v3, "948"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "epsilon"

    aput-object v3, v2, v4

    const-string v3, "949"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zeta"

    aput-object v3, v2, v4

    const-string v3, "950"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eta"

    aput-object v3, v2, v4

    const-string v3, "951"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "theta"

    aput-object v3, v2, v4

    const-string v3, "952"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iota"

    aput-object v3, v2, v4

    const-string v3, "953"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kappa"

    aput-object v3, v2, v4

    const-string v3, "954"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lambda"

    aput-object v3, v2, v4

    const-string v3, "955"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mu"

    aput-object v3, v2, v4

    const-string v3, "956"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nu"

    aput-object v3, v2, v4

    const-string v3, "957"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xi"

    aput-object v3, v2, v4

    const-string v3, "958"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "omicron"

    aput-object v3, v2, v4

    const-string v3, "959"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pi"

    aput-object v3, v2, v4

    const-string v3, "960"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rho"

    aput-object v3, v2, v4

    const-string v3, "961"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sigmaf"

    aput-object v3, v2, v4

    const-string v3, "962"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sigma"

    aput-object v3, v2, v4

    const-string v3, "963"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tau"

    aput-object v3, v2, v4

    const-string v3, "964"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "upsilon"

    aput-object v3, v2, v4

    const-string v3, "965"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "phi"

    aput-object v3, v2, v4

    const-string v3, "966"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "chi"

    aput-object v3, v2, v4

    const-string v3, "967"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "psi"

    aput-object v3, v2, v4

    const-string v3, "968"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "omega"

    aput-object v3, v2, v4

    const-string v3, "969"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "thetasym"

    aput-object v3, v2, v4

    const-string v3, "977"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "upsih"

    aput-object v3, v2, v4

    const-string v3, "978"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "piv"

    aput-object v3, v2, v4

    const-string v3, "982"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bull"

    aput-object v3, v2, v4

    const-string v3, "8226"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hellip"

    aput-object v3, v2, v4

    const-string v3, "8230"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prime"

    aput-object v3, v2, v4

    const-string v3, "8242"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Prime"

    aput-object v3, v2, v4

    const-string v3, "8243"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oline"

    aput-object v3, v2, v4

    const-string v3, "8254"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frasl"

    aput-object v3, v2, v4

    const-string v3, "8260"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "weierp"

    aput-object v3, v2, v4

    const-string v3, "8472"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "image"

    aput-object v3, v2, v4

    const-string v3, "8465"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "real"

    aput-object v3, v2, v4

    const-string v3, "8476"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "trade"

    aput-object v3, v2, v4

    const-string v3, "8482"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "alefsym"

    aput-object v3, v2, v4

    const-string v3, "8501"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "larr"

    aput-object v3, v2, v4

    const-string v3, "8592"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uarr"

    aput-object v3, v2, v4

    const-string v3, "8593"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rarr"

    aput-object v3, v2, v4

    const-string v3, "8594"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "darr"

    aput-object v3, v2, v4

    const-string v3, "8595"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "harr"

    aput-object v3, v2, v4

    const-string v3, "8596"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "crarr"

    aput-object v3, v2, v4

    const-string v3, "8629"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lArr"

    aput-object v3, v2, v4

    const-string v3, "8656"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uArr"

    aput-object v3, v2, v4

    const-string v3, "8657"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rArr"

    aput-object v3, v2, v4

    const-string v3, "8658"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dArr"

    aput-object v3, v2, v4

    const-string v3, "8659"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hArr"

    aput-object v3, v2, v4

    const-string v3, "8660"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "forall"

    aput-object v3, v2, v4

    const-string v3, "8704"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "part"

    aput-object v3, v2, v4

    const-string v3, "8706"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "exist"

    aput-object v3, v2, v4

    const-string v3, "8707"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "empty"

    aput-object v3, v2, v4

    const-string v3, "8709"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nabla"

    aput-object v3, v2, v4

    const-string v3, "8711"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isin"

    aput-object v3, v2, v4

    const-string v3, "8712"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "notin"

    aput-object v3, v2, v4

    const-string v3, "8713"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ni"

    aput-object v3, v2, v4

    const-string v3, "8715"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prod"

    aput-object v3, v2, v4

    const-string v3, "8719"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sum"

    aput-object v3, v2, v4

    const-string v3, "8721"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "minus"

    aput-object v3, v2, v4

    const-string v3, "8722"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lowast"

    aput-object v3, v2, v4

    const-string v3, "8727"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "radic"

    aput-object v3, v2, v4

    const-string v3, "8730"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prop"

    aput-object v3, v2, v4

    const-string v3, "8733"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "infin"

    aput-object v3, v2, v4

    const-string v3, "8734"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ang"

    aput-object v3, v2, v4

    const-string v3, "8736"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "and"

    aput-object v3, v2, v4

    const-string v3, "8743"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "or"

    aput-object v3, v2, v4

    const-string v3, "8744"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cap"

    aput-object v3, v2, v4

    const-string v3, "8745"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cup"

    aput-object v3, v2, v4

    const-string v3, "8746"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "int"

    aput-object v3, v2, v4

    const-string v3, "8747"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "there4"

    aput-object v3, v2, v4

    const-string v3, "8756"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sim"

    aput-object v3, v2, v4

    const-string v3, "8764"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cong"

    aput-object v3, v2, v4

    const-string v3, "8773"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asymp"

    aput-object v3, v2, v4

    const-string v3, "8776"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ne"

    aput-object v3, v2, v4

    const-string v3, "8800"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "equiv"

    aput-object v3, v2, v4

    const-string v3, "8801"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "le"

    aput-object v3, v2, v4

    const-string v3, "8804"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ge"

    aput-object v3, v2, v4

    const-string v3, "8805"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sub"

    aput-object v3, v2, v4

    const-string v3, "8834"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sup"

    aput-object v3, v2, v4

    const-string v3, "8835"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sube"

    aput-object v3, v2, v4

    const-string v3, "8838"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "supe"

    aput-object v3, v2, v4

    const-string v3, "8839"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oplus"

    aput-object v3, v2, v4

    const-string v3, "8853"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otimes"

    aput-object v3, v2, v4

    const-string v3, "8855"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "perp"

    aput-object v3, v2, v4

    const-string v3, "8869"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sdot"

    aput-object v3, v2, v4

    const-string v3, "8901"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lceil"

    aput-object v3, v2, v4

    const-string v3, "8968"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rceil"

    aput-object v3, v2, v4

    const-string v3, "8969"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lfloor"

    aput-object v3, v2, v4

    const-string v3, "8970"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rfloor"

    aput-object v3, v2, v4

    const-string v3, "8971"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lang"

    aput-object v3, v2, v4

    const-string v3, "9001"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rang"

    aput-object v3, v2, v4

    const-string v3, "9002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "loz"

    aput-object v3, v2, v4

    const-string v3, "9674"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spades"

    aput-object v3, v2, v4

    const-string v3, "9824"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clubs"

    aput-object v3, v2, v4

    const-string v3, "9827"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hearts"

    aput-object v3, v2, v4

    const-string v3, "9829"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "diams"

    aput-object v3, v2, v4

    const-string v3, "9830"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "OElig"

    aput-object v3, v2, v4

    const-string v3, "338"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oelig"

    aput-object v3, v2, v4

    const-string v3, "339"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Scaron"

    aput-object v3, v2, v4

    const-string v3, "352"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "scaron"

    aput-object v3, v2, v4

    const-string v3, "353"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Yuml"

    aput-object v3, v2, v4

    const-string v3, "376"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "circ"

    aput-object v3, v2, v4

    const-string v3, "710"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tilde"

    aput-object v3, v2, v4

    const-string v3, "732"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ensp"

    aput-object v3, v2, v4

    const-string v3, "8194"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "emsp"

    aput-object v3, v2, v4

    const-string v3, "8195"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "thinsp"

    aput-object v3, v2, v4

    const-string v3, "8201"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zwnj"

    aput-object v3, v2, v4

    const-string v3, "8204"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zwj"

    aput-object v3, v2, v4

    const-string v3, "8205"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lrm"

    aput-object v3, v2, v4

    const-string v3, "8206"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rlm"

    aput-object v3, v2, v4

    const-string v3, "8207"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ndash"

    aput-object v3, v2, v4

    const-string v3, "8211"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mdash"

    aput-object v3, v2, v4

    const-string v3, "8212"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lsquo"

    aput-object v3, v2, v4

    const-string v3, "8216"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rsquo"

    aput-object v3, v2, v4

    const-string v3, "8217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sbquo"

    aput-object v3, v2, v4

    const-string v3, "8218"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ldquo"

    aput-object v3, v2, v4

    const-string v3, "8220"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rdquo"

    aput-object v3, v2, v4

    const-string v3, "8221"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bdquo"

    aput-object v3, v2, v4

    const-string v3, "8222"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dagger"

    aput-object v3, v2, v4

    const-string v3, "8224"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Dagger"

    aput-object v3, v2, v4

    const-string v3, "8225"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "permil"

    aput-object v3, v2, v4

    const-string v3, "8240"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lsaquo"

    aput-object v3, v2, v4

    const-string v3, "8249"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rsaquo"

    aput-object v3, v2, v4

    const-string v3, "8250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "euro"

    aput-object v3, v2, v4

    const-string v3, "8364"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/genie_connect/android/utils/string/Entities;

    invoke-direct {v0}, Lcom/genie_connect/android/utils/string/Entities;-><init>()V

    sput-object v0, Lcom/genie_connect/android/utils/string/Entities;->XML:Lcom/genie_connect/android/utils/string/Entities;

    .line 377
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->XML:Lcom/genie_connect/android/utils/string/Entities;

    sget-object v1, Lcom/genie_connect/android/utils/string/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/utils/string/Entities;->addEntities([[Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->XML:Lcom/genie_connect/android/utils/string/Entities;

    sget-object v1, Lcom/genie_connect/android/utils/string/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/utils/string/Entities;->addEntities([[Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/genie_connect/android/utils/string/Entities;

    invoke-direct {v0}, Lcom/genie_connect/android/utils/string/Entities;-><init>()V

    sput-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML32:Lcom/genie_connect/android/utils/string/Entities;

    .line 383
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML32:Lcom/genie_connect/android/utils/string/Entities;

    sget-object v1, Lcom/genie_connect/android/utils/string/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/utils/string/Entities;->addEntities([[Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML32:Lcom/genie_connect/android/utils/string/Entities;

    sget-object v1, Lcom/genie_connect/android/utils/string/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/utils/string/Entities;->addEntities([[Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/genie_connect/android/utils/string/Entities;

    invoke-direct {v0}, Lcom/genie_connect/android/utils/string/Entities;-><init>()V

    sput-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML40:Lcom/genie_connect/android/utils/string/Entities;

    .line 389
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML40:Lcom/genie_connect/android/utils/string/Entities;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/Entities;->fillWithHtml40Entities(Lcom/genie_connect/android/utils/string/Entities;)V

    .line 390
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    new-instance v0, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;

    invoke-direct {v0}, Lcom/genie_connect/android/utils/string/Entities$LookupEntityMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/Entities;->map:Lcom/genie_connect/android/utils/string/Entities$EntityMap;

    .line 1019
    return-void
.end method

.method private createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 899
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    return-object v0
.end method

.method private doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 16
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "firstAmp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 945
    .local v11, "len":I
    move/from16 v9, p3

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_6

    .line 946
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 947
    .local v4, "c":C
    const/16 v14, 0x26

    if-ne v4, v14, :cond_5

    .line 948
    add-int/lit8 v12, v9, 0x1

    .line 949
    .local v12, "nextIdx":I
    const/16 v14, 0x3b

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 950
    .local v13, "semiColonIdx":I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 951
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    .line 945
    .end local v12    # "nextIdx":I
    .end local v13    # "semiColonIdx":I
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 954
    .restart local v12    # "nextIdx":I
    .restart local v13    # "semiColonIdx":I
    :cond_0
    const/16 v14, 0x26

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 955
    .local v3, "amphersandIdx":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_1

    if-ge v3, v13, :cond_1

    .line 957
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 960
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 961
    .local v6, "entityContent":Ljava/lang/String;
    const/4 v8, -0x1

    .line 962
    .local v8, "entityValue":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 963
    .local v7, "entityContentLen":I
    if-lez v7, :cond_2

    .line 964
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x23

    if-ne v14, v15, :cond_3

    .line 966
    const/4 v14, 0x1

    if-le v7, v14, :cond_2

    .line 967
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 969
    .local v10, "isHexChar":C
    sparse-switch v10, :sswitch_data_0

    .line 976
    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 979
    :goto_2
    const v14, 0xffff

    if-le v8, v14, :cond_2

    .line 980
    const/4 v8, -0x1

    .line 991
    .end local v10    # "isHexChar":C
    :cond_2
    :goto_3
    const/4 v14, -0x1

    if-ne v8, v14, :cond_4

    .line 992
    const/16 v14, 0x26

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/Writer;->write(I)V

    .line 993
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 994
    const/16 v14, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/Writer;->write(I)V

    .line 998
    :goto_4
    move v9, v13

    .line 999
    goto :goto_1

    .line 972
    .restart local v10    # "isHexChar":C
    :sswitch_0
    const/4 v14, 0x2

    :try_start_1
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 973
    goto :goto_2

    .line 982
    :catch_0
    move-exception v5

    .line 983
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/4 v8, -0x1

    goto :goto_3

    .line 987
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "isHexChar":C
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/genie_connect/android/utils/string/Entities;->entityValue(Ljava/lang/String;)I

    move-result v8

    goto :goto_3

    .line 996
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_4

    .line 1000
    .end local v3    # "amphersandIdx":I
    .end local v6    # "entityContent":Ljava/lang/String;
    .end local v7    # "entityContentLen":I
    .end local v8    # "entityValue":I
    .end local v12    # "nextIdx":I
    .end local v13    # "semiColonIdx":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 1003
    .end local v4    # "c":C
    :cond_6
    return-void

    .line 969
    :sswitch_data_0
    .sparse-switch
        0x58 -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method static fillWithHtml40Entities(Lcom/genie_connect/android/utils/string/Entities;)V
    .locals 1
    .param p0, "entities"    # Lcom/genie_connect/android/utils/string/Entities;

    .prologue
    .line 401
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/utils/string/Entities;->addEntities([[Ljava/lang/String;)V

    .line 402
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/utils/string/Entities;->addEntities([[Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/utils/string/Entities;->addEntities([[Ljava/lang/String;)V

    .line 404
    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .locals 4
    .param p1, "entityArray"    # [[Ljava/lang/String;

    .prologue
    .line 752
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 753
    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/genie_connect/android/utils/string/Entities;->addEntity(Ljava/lang/String;I)V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    :cond_0
    return-void
.end method

.method public addEntity(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 768
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/Entities;->map:Lcom/genie_connect/android/utils/string/Entities$EntityMap;

    invoke-interface {v0, p1, p2}, Lcom/genie_connect/android/utils/string/Entities$EntityMap;->add(Ljava/lang/String;I)V

    .line 769
    return-void
.end method

.method public entityName(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/Entities;->map:Lcom/genie_connect/android/utils/string/Entities$EntityMap;

    invoke-interface {v0, p1}, Lcom/genie_connect/android/utils/string/Entities$EntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public entityValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/Entities;->map:Lcom/genie_connect/android/utils/string/Entities$EntityMap;

    invoke-interface {v0, p1}, Lcom/genie_connect/android/utils/string/Entities$EntityMap;->value(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lcom/genie_connect/android/utils/string/Entities;->createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v1

    .line 814
    .local v1, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/genie_connect/android/utils/string/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 815
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public escape(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3b

    .line 841
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 842
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 843
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 844
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lcom/genie_connect/android/utils/string/Entities;->entityName(I)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "entityName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 846
    const/16 v4, 0x7f

    if-le v0, v4, :cond_0

    .line 847
    const-string v4, "&#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 848
    const/16 v4, 0xa

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 842
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 854
    :cond_1
    const/16 v4, 0x26

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 855
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 859
    .end local v0    # "c":C
    .end local v1    # "entityName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 876
    const/16 v3, 0x26

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 877
    .local v1, "firstAmp":I
    if-gez v1, :cond_0

    .line 888
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 880
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/genie_connect/android/utils/string/Entities;->createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v2

    .line 882
    .local v2, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-direct {p0, v2, p1, v1}, Lcom/genie_connect/android/utils/string/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public unescape(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 920
    const/16 v1, 0x26

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 921
    .local v0, "firstAmp":I
    if-gez v0, :cond_0

    .line 922
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 927
    :goto_0
    return-void

    .line 925
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/utils/string/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V

    goto :goto_0
.end method
