.class public Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;
.super Ljava/lang/Object;
.source "VisorMimeTypes.java"


# static fields
.field private static final PREVIEW_SIZE:I = 0xb

.field private static final mimeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x32a

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    .line 37
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mseed"

    const-string v2, "application/vnd.fdsn.mseed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vsf"

    const-string v2, "application/vnd.vsf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cmdf"

    const-string v2, "chemical/x-cmdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mxs"

    const-string v2, "application/vnd.triscape.mxs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m4v"

    const-string v2, "video/x-m4v"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oga"

    const-string v2, "audio/ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ogg"

    const-string v2, "audio/ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "spx"

    const-string v2, "audio/ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "shf"

    const-string v2, "application/shf+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jisp"

    const-string v2, "application/vnd.jisp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sgl"

    const-string v2, "application/vnd.stardivision.writer-global"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gxt"

    const-string v2, "application/vnd.geonext"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mp4s"

    const-string v2, "application/mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "smi"

    const-string v2, "application/smil+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "smil"

    const-string v2, "application/smil+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xop"

    const-string v2, "application/xop+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "spl"

    const-string v2, "application/x-futuresplash"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "spq"

    const-string v2, "application/scvp-vp-request"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bh2"

    const-string v2, "application/vnd.fujitsu.oasysprs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xpm"

    const-string v2, "image/x-xpixmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gdl"

    const-string v2, "model/vnd.gdl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dotx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ser"

    const-string v2, "application/java-serialized-object"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ghf"

    const-string v2, "application/vnd.groove-help"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mc1"

    const-string v2, "application/vnd.medcalcdata"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cdy"

    const-string v2, "application/vnd.cinderella"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nns"

    const-string v2, "application/vnd.noblenet-sealer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "msty"

    const-string v2, "application/vnd.muvee.style"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aas"

    const-string v2, "application/x-authorware-seg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "p"

    const-string v2, "text/x-pascal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pas"

    const-string v2, "text/x-pascal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rdz"

    const-string v2, "application/vnd.data-vision.rdz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "js"

    const-string v2, "text/javascript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fzs"

    const-string v2, "application/vnd.fuzzysheet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "csml"

    const-string v2, "chemical/x-csml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "psf"

    const-string v2, "application/x-font-linux-psf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "afp"

    const-string v2, "application/vnd.ibm.modcap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "listafp"

    const-string v2, "application/vnd.ibm.modcap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "list3820"

    const-string v2, "application/vnd.ibm.modcap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qt"

    const-string v2, "video/quicktime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fly"

    const-string v2, "text/vnd.fly"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rlc"

    const-string v2, "image/vnd.fujixerox.edmics-rlc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sxi"

    const-string v2, "application/vnd.sun.xml.impress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vor"

    const-string v2, "application/vnd.stardivision.writer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gac"

    const-string v2, "application/vnd.groove-account"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sldm"

    const-string v2, "application/vnd.ms-powerpoint.slide.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pgn"

    const-string v2, "application/x-chess-pgn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "zaz"

    const-string v2, "application/vnd.zzazz.deck+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ccxml"

    const-string v2, "application/ccxml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "csh"

    const-string v2, "application/x-csh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fvt"

    const-string v2, "video/vnd.fvt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "grv"

    const-string v2, "application/vnd.groove-injector"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "scurl"

    const-string v2, "text/vnd.curl.scurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oa3"

    const-string v2, "application/vnd.fujitsu.oasys3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oa2"

    const-string v2, "application/vnd.fujitsu.oasys2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rgb"

    const-string v2, "image/x-rgb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pfr"

    const-string v2, "application/font-tdpfr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pbd"

    const-string v2, "application/vnd.powerbuilder6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "psd"

    const-string v2, "image/vnd.adobe.photoshop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fh"

    const-string v2, "image/x-freehand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fhc"

    const-string v2, "image/x-freehand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fh4"

    const-string v2, "image/x-freehand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fh5"

    const-string v2, "image/x-freehand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fh7"

    const-string v2, "image/x-freehand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dot"

    const-string v2, "application/msword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "docx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "plc"

    const-string v2, "application/vnd.mobius.plc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rnc"

    const-string v2, "application/relax-ng-compact-syntax"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rpss"

    const-string v2, "application/vnd.nokia.radio-presets"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nlu"

    const-string v2, "application/vnd.neurolanguage.nlu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pcl"

    const-string v2, "application/vnd.hp-pcl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "uu"

    const-string v2, "text/x-uuencode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ami"

    const-string v2, "application/vnd.amiga.ami"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "viv"

    const-string v2, "video/vnd.vivo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mp4a"

    const-string v2, "audio/mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vis"

    const-string v2, "application/vnd.visionary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "asc"

    const-string v2, "application/pgp-signature"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sig"

    const-string v2, "application/pgp-signature"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "karbon"

    const-string v2, "application/vnd.kde.karbon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "htke"

    const-string v2, "application/vnd.kenameaapp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nnd"

    const-string v2, "application/vnd.noblenet-directory"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xlsm"

    const-string v2, "application/vnd.ms-excel.sheet.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ez2"

    const-string v2, "application/vnd.ezpix-album"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "otm"

    const-string v2, "application/vnd.oasis.opendocument.text-master"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "f"

    const-string v2, "text/x-fortran"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "for"

    const-string v2, "text/x-fortran"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "f77"

    const-string v2, "text/x-fortran"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "f90"

    const-string v2, "text/x-fortran"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "apr"

    const-string v2, "application/vnd.lotus-approach"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mid"

    const-string v2, "audio/midi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "midi"

    const-string v2, "audio/midi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kar"

    const-string v2, "audio/midi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rmi"

    const-string v2, "audio/midi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tmo"

    const-string v2, "application/vnd.tmobile-livetv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pya"

    const-string v2, "audio/vnd.ms-playready.media.pya"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cgm"

    const-string v2, "image/cgm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "uri"

    const-string v2, "text/uri-list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "uris"

    const-string v2, "text/uri-list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "urls"

    const-string v2, "text/uri-list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ipk"

    const-string v2, "application/vnd.shana.informed.package"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "clkk"

    const-string v2, "application/vnd.crick.clicker.keyboard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mbox"

    const-string v2, "application/mbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "unityweb"

    const-string v2, "application/vnd.unity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "joda"

    const-string v2, "application/vnd.joost.joda-archive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kwd"

    const-string v2, "application/vnd.kde.kword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kwt"

    const-string v2, "application/vnd.kde.kword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpy"

    const-string v2, "application/vnd.ibm.minipay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpeg"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpg"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpe"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m1v"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m2v"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "asf"

    const-string v2, "video/x-ms-asf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "asx"

    const-string v2, "video/x-ms-asf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jad"

    const-string v2, "text/vnd.sun.j2me.app-descriptor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rm"

    const-string v2, "application/vnd.rn-realmedia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xer"

    const-string v2, "application/patch-ops-error+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xml"

    const-string v2, "application/xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xsl"

    const-string v2, "application/xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "icc"

    const-string v2, "application/vnd.iccprofile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "icm"

    const-string v2, "application/vnd.iccprofile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mmr"

    const-string v2, "image/vnd.fujixerox.edmics-mmr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hvd"

    const-string v2, "application/vnd.yamaha.hv-dic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mbk"

    const-string v2, "application/vnd.mobius.mbk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "123"

    const-string v2, "application/vnd.lotus-1-2-3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fe_launch"

    const-string v2, "application/vnd.denovo.fcselayout-link"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "setpay"

    const-string v2, "application/set-payment-initiation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sdc"

    const-string v2, "application/vnd.stardivision.calc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "swi"

    const-string v2, "application/vnd.aristanetworks.swi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "g3"

    const-string v2, "image/g3fax"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cil"

    const-string v2, "application/vnd.ms-artgalry"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vcg"

    const-string v2, "application/vnd.groove-vcard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "chm"

    const-string v2, "application/vnd.ms-htmlhelp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "grxml"

    const-string v2, "application/srgs+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ext"

    const-string v2, "application/vnd.novadigm.ext"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "opf"

    const-string v2, "application/oebps-package+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gtm"

    const-string v2, "application/vnd.groove-tool-message"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "au"

    const-string v2, "audio/basic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "snd"

    const-string v2, "audio/basic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ppsm"

    const-string v2, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wbxml"

    const-string v2, "application/vnd.wap.wbxml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oxt"

    const-string v2, "application/vnd.openofficeorg.extension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "davmount"

    const-string v2, "application/davmount+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ivu"

    const-string v2, "application/vnd.immervision-ivu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wrl"

    const-string v2, "model/vrml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vrml"

    const-string v2, "model/vrml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "p7m"

    const-string v2, "application/pkcs7-mime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "p7c"

    const-string v2, "application/pkcs7-mime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pps"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pot"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ivp"

    const-string v2, "application/vnd.immervision-ivp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "movie"

    const-string v2, "video/x-sgi-movie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ecelp4800"

    const-string v2, "audio/vnd.nuera.ecelp4800"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tpl"

    const-string v2, "application/vnd.groove-tool-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fnc"

    const-string v2, "application/vnd.frogans.fnc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wax"

    const-string v2, "audio/x-ms-wax"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "3gp"

    const-string v2, "video/3gpp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ppd"

    const-string v2, "application/vnd.cups-ppd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mmf"

    const-string v2, "application/vnd.smaf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "exe"

    const-string v2, "application/x-msdownload"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dll"

    const-string v2, "application/x-msdownload"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "com"

    const-string v2, "application/x-msdownload"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bat"

    const-string v2, "application/x-msdownload"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "msi"

    const-string v2, "application/x-msdownload"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "skp"

    const-string v2, "application/vnd.koan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "skd"

    const-string v2, "application/vnd.koan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "skt"

    const-string v2, "application/vnd.koan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "skm"

    const-string v2, "application/vnd.koan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ice"

    const-string v2, "x-conference/x-cooltalk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "emma"

    const-string v2, "application/emma+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "odc"

    const-string v2, "application/vnd.oasis.opendocument.chart"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "atomcat"

    const-string v2, "application/atomcat+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "onetoc"

    const-string v2, "application/onenote"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "onetoc2"

    const-string v2, "application/onenote"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "onetmp"

    const-string v2, "application/onenote"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "onepkg"

    const-string v2, "application/onenote"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "otp"

    const-string v2, "application/vnd.oasis.opendocument.presentation-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "irm"

    const-string v2, "application/vnd.ibm.rights-management"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "texinfo"

    const-string v2, "application/x-texinfo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "texi"

    const-string v2, "application/x-texinfo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "spp"

    const-string v2, "application/scvp-vp-response"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xif"

    const-string v2, "image/vnd.xiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sitx"

    const-string v2, "application/x-stuffitx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "eol"

    const-string v2, "audio/vnd.digital-winds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "c4g"

    const-string v2, "application/vnd.clonk.c4group"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "c4d"

    const-string v2, "application/vnd.clonk.c4group"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "c4f"

    const-string v2, "application/vnd.clonk.c4group"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "c4p"

    const-string v2, "application/vnd.clonk.c4group"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "c4u"

    const-string v2, "application/vnd.clonk.c4group"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "flo"

    const-string v2, "application/vnd.micrografx.flo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "svg"

    const-string v2, "image/svg+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "svgz"

    const-string v2, "image/svg+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xsm"

    const-string v2, "application/vnd.syncml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hdf"

    const-string v2, "application/x-hdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cml"

    const-string v2, "chemical/x-cml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "atx"

    const-string v2, "application/vnd.antix.game-component"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "flv"

    const-string v2, "video/x-flv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m3u8"

    const-string v2, "application/vnd.apple.mpegurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wbs"

    const-string v2, "application/vnd.criticaltools.wbs+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bz2"

    const-string v2, "application/x-bzip2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "boz"

    const-string v2, "application/x-bzip2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "plf"

    const-string v2, "application/vnd.pocketlearn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lbe"

    const-string v2, "application/vnd.llamagraphics.life-balance.exchange+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vcd"

    const-string v2, "application/x-cdlink"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sxg"

    const-string v2, "application/vnd.sun.xml.writer.global"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fli"

    const-string v2, "video/x-fli"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wsdl"

    const-string v2, "application/wsdl+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "slt"

    const-string v2, "application/vnd.epson.salt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lwp"

    const-string v2, "application/vnd.lotus-wordpro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ddd"

    const-string v2, "application/vnd.fujixerox.ddd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xfdf"

    const-string v2, "application/vnd.adobe.xfdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "portpkg"

    const-string v2, "application/vnd.macports.portpkg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pfa"

    const-string v2, "application/x-font-type1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pfb"

    const-string v2, "application/x-font-type1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pfm"

    const-string v2, "application/x-font-type1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "afm"

    const-string v2, "application/x-font-type1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nc"

    const-string v2, "application/x-netcdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cdf"

    const-string v2, "application/x-netcdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpm"

    const-string v2, "application/vnd.blueice.multipass"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sis"

    const-string v2, "application/vnd.symbian.install"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sisx"

    const-string v2, "application/vnd.symbian.install"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ustar"

    const-string v2, "application/x-ustar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rpst"

    const-string v2, "application/vnd.nokia.radio-preset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "eml"

    const-string v2, "message/rfc822"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mime"

    const-string v2, "message/rfc822"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "g2w"

    const-string v2, "application/vnd.geoplan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ma"

    const-string v2, "application/mathematica"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nb"

    const-string v2, "application/mathematica"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mb"

    const-string v2, "application/mathematica"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "csv"

    const-string v2, "text/csv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wvx"

    const-string v2, "video/x-ms-wvx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jlt"

    const-string v2, "application/vnd.hp-jlyt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vcx"

    const-string v2, "application/vnd.vcx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "docm"

    const-string v2, "application/vnd.ms-word.document.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xdssc"

    const-string v2, "application/dssc+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pbm"

    const-string v2, "image/x-portable-bitmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fdf"

    const-string v2, "application/vnd.fdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ggt"

    const-string v2, "application/vnd.geogebra.tool"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cii"

    const-string v2, "application/vnd.anser-web-certificate-issue-initiation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "atomsvc"

    const-string v2, "application/atomsvc+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "stw"

    const-string v2, "application/vnd.sun.xml.writer.template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vtu"

    const-string v2, "model/vnd.vtu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "latex"

    const-string v2, "application/x-latex"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cat"

    const-string v2, "application/vnd.ms-pki.seccat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "odf"

    const-string v2, "application/vnd.oasis.opendocument.formula"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "trm"

    const-string v2, "application/x-msterminal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pptm"

    const-string v2, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "stl"

    const-string v2, "application/vnd.ms-pki.stl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ltf"

    const-string v2, "application/vnd.frogans.ltf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "obd"

    const-string v2, "application/x-msbinder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sda"

    const-string v2, "application/vnd.stardivision.draw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "org"

    const-string v2, "application/vnd.lotus-organizer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ftc"

    const-string v2, "application/vnd.fluxtime.clip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rcprofile"

    const-string v2, "application/vnd.ipunplugged.rcprofile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cmx"

    const-string v2, "image/x-cmx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cif"

    const-string v2, "chemical/x-cif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rp9"

    const-string v2, "application/vnd.cloanto.rp9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pvb"

    const-string v2, "application/vnd.3gpp.pic-bw-var"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aw"

    const-string v2, "application/applixware"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pptx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rld"

    const-string v2, "application/resource-lists-diff+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xar"

    const-string v2, "application/vnd.xara"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ecelp7470"

    const-string v2, "audio/vnd.nuera.ecelp7470"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xlm"

    const-string v2, "application/vnd.ms-excel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xla"

    const-string v2, "application/vnd.ms-excel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xlc"

    const-string v2, "application/vnd.ms-excel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xlt"

    const-string v2, "application/vnd.ms-excel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xlw"

    const-string v2, "application/vnd.ms-excel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "txf"

    const-string v2, "application/vnd.mobius.txf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "prc"

    const-string v2, "application/x-mobipocket-ebook"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mobi"

    const-string v2, "application/x-mobipocket-ebook"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "swf"

    const-string v2, "application/x-shockwave-flash"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sfs"

    const-string v2, "application/vnd.spotfire.sfs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dp"

    const-string v2, "application/vnd.osgi.dp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "potx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "efif"

    const-string v2, "application/vnd.picsel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pdf"

    const-string v2, "application/pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dsc"

    const-string v2, "text/prs.lines.tag"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mathml"

    const-string v2, "application/mathml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bed"

    const-string v2, "application/vnd.realvnc.bed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bcpio"

    const-string v2, "application/x-bcpio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "shar"

    const-string v2, "application/x-shar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xdm"

    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "teacher"

    const-string v2, "application/vnd.smart.teacher"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sldx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slide"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "stf"

    const-string v2, "application/vnd.wt.stf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "odb"

    const-string v2, "application/vnd.oasis.opendocument.database"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bdf"

    const-string v2, "application/x-font-bdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tcap"

    const-string v2, "application/vnd.3gpp2.tcap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fm"

    const-string v2, "application/vnd.framemaker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "frame"

    const-string v2, "application/vnd.framemaker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "maker"

    const-string v2, "application/vnd.framemaker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "book"

    const-string v2, "application/vnd.framemaker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "src"

    const-string v2, "application/x-wais-source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rep"

    const-string v2, "application/vnd.businessobjects"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dna"

    const-string v2, "application/vnd.dna"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jpgv"

    const-string v2, "video/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ez"

    const-string v2, "application/andrew-inset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vxml"

    const-string v2, "application/voicexml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "x3d"

    const-string v2, "application/vnd.hzn-3d-crossword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dxp"

    const-string v2, "application/vnd.spotfire.dxp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dvi"

    const-string v2, "application/x-dvi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "f4v"

    const-string v2, "video/x-f4v"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fg5"

    const-string v2, "application/vnd.fujitsu.oasysgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "clp"

    const-string v2, "application/x-msclip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "acu"

    const-string v2, "application/vnd.acucobol"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ksp"

    const-string v2, "application/vnd.kde.kspread"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rms"

    const-string v2, "application/vnd.jcp.javame.midlet-rms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lvp"

    const-string v2, "audio/vnd.lucent.voice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jpm"

    const-string v2, "video/jpm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jpgm"

    const-string v2, "video/jpm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pcx"

    const-string v2, "image/x-pcx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sxm"

    const-string v2, "application/vnd.sun.xml.math"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "g3w"

    const-string v2, "application/vnd.geospace"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ngdat"

    const-string v2, "application/vnd.nokia.n-gage.data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "clkp"

    const-string v2, "application/vnd.crick.clicker.palette"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "osfpvg"

    const-string v2, "application/vnd.yamaha.openscoreformat.osfpvg+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aep"

    const-string v2, "application/vnd.audiograph"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wqd"

    const-string v2, "application/vnd.wqd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mdi"

    const-string v2, "image/vnd.ms-modi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ecelp9600"

    const-string v2, "audio/vnd.nuera.ecelp9600"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fig"

    const-string v2, "application/x-xfig"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "p7r"

    const-string v2, "application/x-pkcs7-certreqresp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jar"

    const-string v2, "application/java-archive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ief"

    const-string v2, "image/ief"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hvs"

    const-string v2, "application/vnd.yamaha.hv-script"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cdx"

    const-string v2, "chemical/x-cdx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "abw"

    const-string v2, "application/x-abiword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "deb"

    const-string v2, "application/x-debian-package"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "udeb"

    const-string v2, "application/x-debian-package"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "djvu"

    const-string v2, "image/vnd.djvu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "djv"

    const-string v2, "image/vnd.djvu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wml"

    const-string v2, "text/vnd.wap.wml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xht"

    const-string v2, "application/xhtml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tpt"

    const-string v2, "application/vnd.trid.tpt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wmz"

    const-string v2, "application/x-ms-wmz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rtx"

    const-string v2, "text/richtext"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wspolicy"

    const-string v2, "application/wspolicy+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "odg"

    const-string v2, "application/vnd.oasis.opendocument.graphics"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "res"

    const-string v2, "application/x-dtbresource+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xbm"

    const-string v2, "image/x-xbitmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "zir"

    const-string v2, "application/vnd.zul"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "zirz"

    const-string v2, "application/vnd.zul"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cdkey"

    const-string v2, "application/vnd.mediastation.cdkey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wmd"

    const-string v2, "application/x-ms-wmd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ogv"

    const-string v2, "video/ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "scq"

    const-string v2, "application/scvp-cv-request"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sfd-hdstx"

    const-string v2, "application/vnd.hydrostatix.sof-data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "igx"

    const-string v2, "application/vnd.micrografx.igx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xps"

    const-string v2, "application/vnd.ms-xpsdocument"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xdw"

    const-string v2, "application/vnd.fujixerox.docuworks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kfo"

    const-string v2, "application/vnd.kde.kformula"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "chrt"

    const-string v2, "application/vnd.kde.kchart"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sdp"

    const-string v2, "application/sdp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oth"

    const-string v2, "application/vnd.oasis.opendocument.text-web"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "3g2"

    const-string v2, "video/3gpp2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "utz"

    const-string v2, "application/vnd.uiq.theme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mus"

    const-string v2, "application/vnd.musician"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wpd"

    const-string v2, "application/vnd.wordperfect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oas"

    const-string v2, "application/vnd.fujitsu.oasys"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pic"

    const-string v2, "image/x-pict"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pct"

    const-string v2, "image/x-pict"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wmx"

    const-string v2, "video/x-ms-wmx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "p10"

    const-string v2, "application/pkcs10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xfdl"

    const-string v2, "application/vnd.xfdl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pgp"

    const-string v2, "application/pgp-encrypted"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rs"

    const-string v2, "application/rls-services+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cpt"

    const-string v2, "application/mac-compactpro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gmx"

    const-string v2, "application/vnd.gmx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "potm"

    const-string v2, "application/vnd.ms-powerpoint.template.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "iif"

    const-string v2, "application/vnd.shana.informed.interchange"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ace"

    const-string v2, "application/x-ace-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pcurl"

    const-string v2, "application/vnd.curl.pcurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ods"

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vsd"

    const-string v2, "application/vnd.visio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vst"

    const-string v2, "application/vnd.visio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vss"

    const-string v2, "application/vnd.visio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vsw"

    const-string v2, "application/vnd.visio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ifm"

    const-string v2, "application/vnd.shana.informed.formdata"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fbs"

    const-string v2, "image/vnd.fastbidsheet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qxd"

    const-string v2, "application/vnd.quark.quarkxpress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qxt"

    const-string v2, "application/vnd.quark.quarkxpress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qwd"

    const-string v2, "application/vnd.quark.quarkxpress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qwt"

    const-string v2, "application/vnd.quark.quarkxpress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qxl"

    const-string v2, "application/vnd.quark.quarkxpress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qxb"

    const-string v2, "application/vnd.quark.quarkxpress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "epub"

    const-string v2, "application/epub+zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "crl"

    const-string v2, "application/pkix-crl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nnw"

    const-string v2, "application/vnd.noblenet-web"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nbp"

    const-string v2, "application/vnd.wolfram.player"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "plb"

    const-string v2, "application/vnd.3gpp.pic-bw-large"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "itp"

    const-string v2, "application/vnd.shana.informed.formtemplate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "snf"

    const-string v2, "application/x-font-snf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "str"

    const-string v2, "application/vnd.pg.format"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wtb"

    const-string v2, "application/vnd.webturbo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "osf"

    const-string v2, "application/vnd.yamaha.openscoreformat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xltx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pre"

    const-string v2, "application/vnd.lotus-freelance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "clkt"

    const-string v2, "application/vnd.crick.clicker.template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hbci"

    const-string v2, "application/vnd.hbci"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dwf"

    const-string v2, "model/vnd.dwf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "igs"

    const-string v2, "model/iges"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "iges"

    const-string v2, "model/iges"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ktz"

    const-string v2, "application/vnd.kahootz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ktr"

    const-string v2, "application/vnd.kahootz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "n-gage"

    const-string v2, "application/vnd.nokia.n-gage.symbian.install"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "otg"

    const-string v2, "application/vnd.oasis.opendocument.graphics-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rsd"

    const-string v2, "application/rsd+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hlp"

    const-string v2, "application/winhlp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "azw"

    const-string v2, "application/vnd.amazon.ebook"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "msf"

    const-string v2, "application/vnd.epson.msf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mp4v"

    const-string v2, "video/mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpg4"

    const-string v2, "video/mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cod"

    const-string v2, "application/vnd.rim.cod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "st"

    const-string v2, "application/vnd.sailingtracker.track"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "odi"

    const-string v2, "application/vnd.oasis.opendocument.image"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tra"

    const-string v2, "application/vnd.trueapp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wm"

    const-string v2, "video/x-ms-wm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bin"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dms"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lha"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lrf"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lzh"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "so"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "iso"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dmg"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dist"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "distz"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pkg"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bpk"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dump"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "elc"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "deploy"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tsv"

    const-string v2, "text/tab-separated-values"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "esf"

    const-string v2, "application/vnd.epson.esf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "p7s"

    const-string v2, "application/pkcs7-signature"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xlsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "geo"

    const-string v2, "application/vnd.dynageo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mmd"

    const-string v2, "application/vnd.chipnuts.karaoke-mmd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mxml"

    const-string v2, "application/xv+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xhvml"

    const-string v2, "application/xv+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xvml"

    const-string v2, "application/xv+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xvm"

    const-string v2, "application/xv+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nsf"

    const-string v2, "application/vnd.lotus-notes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "crd"

    const-string v2, "application/x-mscardfile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "p12"

    const-string v2, "application/x-pkcs12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pfx"

    const-string v2, "application/x-pkcs12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "c"

    const-string v2, "text/x-c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cc"

    const-string v2, "text/x-c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cxx"

    const-string v2, "text/x-c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cpp"

    const-string v2, "text/x-c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "h"

    const-string v2, "text/x-c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hh"

    const-string v2, "text/x-c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dic"

    const-string v2, "text/x-c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cla"

    const-string v2, "application/vnd.claymore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "avi"

    const-string v2, "video/x-msvideo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "edx"

    const-string v2, "application/vnd.novadigm.edx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gph"

    const-string v2, "application/vnd.flographit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rq"

    const-string v2, "application/sparql-query"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xdp"

    const-string v2, "application/vnd.adobe.xdp+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "umj"

    const-string v2, "application/vnd.umajin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pclxl"

    const-string v2, "application/vnd.hp-pclxl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "edm"

    const-string v2, "application/vnd.novadigm.edm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jpeg"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "adp"

    const-string v2, "audio/adpcm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "text"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "conf"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "def"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "list"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "log"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "in"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gsf"

    const-string v2, "application/x-font-ghostscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aab"

    const-string v2, "application/x-authorware-bin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "x32"

    const-string v2, "application/x-authorware-bin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "u32"

    const-string v2, "application/x-authorware-bin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vox"

    const-string v2, "application/x-authorware-bin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ott"

    const-string v2, "application/vnd.oasis.opendocument.text-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kmz"

    const-string v2, "application/vnd.google-earth.kmz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "etx"

    const-string v2, "text/x-setext"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sv4crc"

    const-string v2, "application/x-sv4crc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xlam"

    const-string v2, "application/vnd.ms-excel.addin.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pcf"

    const-string v2, "application/x-font-pcf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "torrent"

    const-string v2, "application/x-bittorrent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "twd"

    const-string v2, "application/vnd.simtech-mindmapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "twds"

    const-string v2, "application/vnd.simtech-mindmapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qam"

    const-string v2, "application/vnd.epson.quickanime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bdm"

    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "3dml"

    const-string v2, "text/vnd.in3d.3dml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "saf"

    const-string v2, "application/vnd.yamaha.smaf-audio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ncx"

    const-string v2, "application/x-dtbncx+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ppsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sc"

    const-string v2, "application/vnd.ibm.secure-container"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gnumeric"

    const-string v2, "application/x-gnumeric"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "paw"

    const-string v2, "application/vnd.pawaafile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bmi"

    const-string v2, "application/vnd.bmi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sxc"

    const-string v2, "application/vnd.sun.xml.calc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gim"

    const-string v2, "application/vnd.groove-identity-message"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qps"

    const-string v2, "application/vnd.publishare-delta-tree"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "scd"

    const-string v2, "application/x-msschedule"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mgz"

    const-string v2, "application/vnd.proteus.magazine"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vcf"

    const-string v2, "text/x-vcard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "flw"

    const-string v2, "application/vnd.kde.kivio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xslt"

    const-string v2, "application/xslt+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "stc"

    const-string v2, "application/vnd.sun.xml.calc.template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dir"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dcr"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dxr"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cst"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cct"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cxt"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "w3d"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fgd"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "swa"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rif"

    const-string v2, "application/reginfo+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "atc"

    const-string v2, "application/vnd.acucorp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "acutc"

    const-string v2, "application/vnd.acucorp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fti"

    const-string v2, "application/vnd.anser-web-funds-transfer-initiation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dis"

    const-string v2, "application/vnd.mobius.dis"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "zmm"

    const-string v2, "application/vnd.handheld-entertainment+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mag"

    const-string v2, "application/vnd.ecowin.chart"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mlp"

    const-string v2, "application/vnd.dolby.mlp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "psb"

    const-string v2, "application/vnd.3gpp.pic-bw-small"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mdb"

    const-string v2, "application/x-msaccess"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aso"

    const-string v2, "application/vnd.accpac.simply.aso"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pwn"

    const-string v2, "application/vnd.3m.post-it-notes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ots"

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mj2"

    const-string v2, "video/mj2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mjp2"

    const-string v2, "video/mj2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "link66"

    const-string v2, "application/vnd.route66.link66+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "les"

    const-string v2, "application/vnd.hhe.lesson-player"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sti"

    const-string v2, "application/vnd.sun.xml.impress.template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cdbcmsg"

    const-string v2, "application/vnd.contact.cmsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cdxml"

    const-string v2, "application/vnd.chemdraw+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aac"

    const-string v2, "audio/x-aac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ipfix"

    const-string v2, "application/ipfix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mxu"

    const-string v2, "video/vnd.mpegurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m4u"

    const-string v2, "video/vnd.mpegurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cer"

    const-string v2, "application/pkix-cert"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mny"

    const-string v2, "application/x-msmoney"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tex"

    const-string v2, "application/x-tex"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ics"

    const-string v2, "text/calendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ifb"

    const-string v2, "text/calendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ei6"

    const-string v2, "application/vnd.pg.osasli"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "spf"

    const-string v2, "application/vnd.yamaha.smaf-phrase"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lostxml"

    const-string v2, "application/lost+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "apk"

    const-string v2, "application/vnd.android.package-archive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pub"

    const-string v2, "application/x-mspublisher"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gtw"

    const-string v2, "model/vnd.gtw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ufd"

    const-string v2, "application/vnd.ufdl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ufdl"

    const-string v2, "application/vnd.ufdl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jnlp"

    const-string v2, "application/x-java-jnlp-file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "air"

    const-string v2, "application/vnd.adobe.air-application-installer-package+zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dcurl"

    const-string v2, "text/vnd.curl.dcurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mxl"

    const-string v2, "application/vnd.recordare.musicxml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cpio"

    const-string v2, "application/x-cpio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpp"

    const-string v2, "application/vnd.ms-project"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpt"

    const-string v2, "application/vnd.ms-project"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pdb"

    const-string v2, "application/vnd.palm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pqa"

    const-string v2, "application/vnd.palm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oprc"

    const-string v2, "application/vnd.palm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mrc"

    const-string v2, "application/marc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hqx"

    const-string v2, "application/mac-binhex40"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "json"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mvb"

    const-string v2, "application/x-msmediaview"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m13"

    const-string v2, "application/x-msmediaview"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m14"

    const-string v2, "application/x-msmediaview"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpga"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mp2"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mp2a"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m2a"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m3a"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cmc"

    const-string v2, "application/vnd.cosmocaller"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wmf"

    const-string v2, "application/x-msmetafile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "odft"

    const-string v2, "application/vnd.oasis.opendocument.formula-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dtb"

    const-string v2, "application/x-dtbook+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xbap"

    const-string v2, "application/x-ms-xbap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "csp"

    const-string v2, "application/vnd.commonspace"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "stk"

    const-string v2, "application/hyperstudio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpn"

    const-string v2, "application/vnd.mophun.application"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gqf"

    const-string v2, "application/vnd.grafeq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gqs"

    const-string v2, "application/vnd.grafeq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rl"

    const-string v2, "application/resource-lists+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gtar"

    const-string v2, "application/x-gtar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pls"

    const-string v2, "application/pls+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tcl"

    const-string v2, "application/x-tcl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "der"

    const-string v2, "application/x-x509-ca-cert"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "crt"

    const-string v2, "application/x-x509-ca-cert"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xo"

    const-string v2, "application/vnd.olpc-sugar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xltm"

    const-string v2, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cu"

    const-string v2, "application/cu-seeme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kml"

    const-string v2, "application/vnd.google-earth.kml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sh"

    const-string v2, "application/x-sh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xpw"

    const-string v2, "application/vnd.intercon.formnet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xpx"

    const-string v2, "application/vnd.intercon.formnet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wg"

    const-string v2, "application/vnd.pmi.widget"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "seed"

    const-string v2, "application/vnd.fdsn.seed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dataless"

    const-string v2, "application/vnd.fdsn.seed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sdd"

    const-string v2, "application/vnd.stardivision.impress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ttf"

    const-string v2, "application/x-font-ttf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ttc"

    const-string v2, "application/x-font-ttf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "npx"

    const-string v2, "image/vnd.net-fpx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aif"

    const-string v2, "audio/x-aiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aiff"

    const-string v2, "audio/x-aiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aifc"

    const-string v2, "audio/x-aiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xlsb"

    const-string v2, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rtf"

    const-string v2, "application/rtf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sus"

    const-string v2, "application/vnd.sus-calendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "susp"

    const-string v2, "application/vnd.sus-calendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "prf"

    const-string v2, "application/pics-rules"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tar"

    const-string v2, "application/x-tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pml"

    const-string v2, "application/vnd.ctc-posml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ims"

    const-string v2, "application/vnd.ms-ims"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "imp"

    const-string v2, "application/vnd.accpac.simply.imp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xul"

    const-string v2, "application/vnd.mozilla.xul+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "acc"

    const-string v2, "application/vnd.americandynamics.acc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mfm"

    const-string v2, "application/vnd.mfmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dotm"

    const-string v2, "application/vnd.ms-word.template.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ptid"

    const-string v2, "application/vnd.pvi.ptid1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pyv"

    const-string v2, "video/vnd.ms-playready.media.pyv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ssf"

    const-string v2, "application/vnd.epson.ssf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sxd"

    const-string v2, "application/vnd.sun.xml.draw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xap"

    const-string v2, "application/x-silverlight-app"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fst"

    const-string v2, "image/vnd.fst"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rdf"

    const-string v2, "application/rdf+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gv"

    const-string v2, "text/vnd.graphviz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lrm"

    const-string v2, "application/vnd.ms-lrm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "box"

    const-string v2, "application/vnd.previewsystems.box"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mseq"

    const-string v2, "application/vnd.mseq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mscml"

    const-string v2, "application/mediaservercontrol+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cmp"

    const-string v2, "application/vnd.yellowriver-custom-menu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wad"

    const-string v2, "application/x-doom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "svd"

    const-string v2, "application/vnd.svd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pki"

    const-string v2, "application/pkixcmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ai"

    const-string v2, "application/postscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "eps"

    const-string v2, "application/postscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ps"

    const-string v2, "application/postscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "msl"

    const-string v2, "application/vnd.mobius.msl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sv4cpio"

    const-string v2, "application/x-sv4cpio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "java"

    const-string v2, "text/x-java-source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpc"

    const-string v2, "application/vnd.mophun.certificate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "daf"

    const-string v2, "application/vnd.mobius.daf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qfx"

    const-string v2, "application/vnd.intu.qfx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mxf"

    const-string v2, "application/mxf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mif"

    const-string v2, "application/vnd.mif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "txd"

    const-string v2, "application/vnd.genomatix.tuxedo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pkipath"

    const-string v2, "application/pkix-pkipath"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sse"

    const-string v2, "application/vnd.kodak-descriptor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kon"

    const-string v2, "application/vnd.kde.kontour"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dfac"

    const-string v2, "application/vnd.dreamfactory"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gram"

    const-string v2, "application/srgs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hps"

    const-string v2, "application/vnd.hp-hps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cab"

    const-string v2, "application/vnd.ms-cab-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "m3u"

    const-string v2, "audio/x-mpegurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "odp"

    const-string v2, "application/vnd.oasis.opendocument.presentation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ggb"

    const-string v2, "application/vnd.geogebra.file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xyz"

    const-string v2, "chemical/x-xyz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "clkw"

    const-string v2, "application/vnd.crick.clicker.wordbank"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mqy"

    const-string v2, "application/vnd.mobius.mqy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ico"

    const-string v2, "image/x-icon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kne"

    const-string v2, "application/vnd.kinar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "knp"

    const-string v2, "application/vnd.kinar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kpr"

    const-string v2, "application/vnd.kde.kpresenter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kpt"

    const-string v2, "application/vnd.kde.kpresenter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sbml"

    const-string v2, "application/sbml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fpx"

    const-string v2, "image/vnd.fpx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "bz"

    const-string v2, "application/x-bzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "flx"

    const-string v2, "text/vnd.fmi.flexstor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "application"

    const-string v2, "application/x-ms-application"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "lbd"

    const-string v2, "application/vnd.llamagraphics.life-balance.desktop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sxw"

    const-string v2, "application/vnd.sun.xml.writer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "jam"

    const-string v2, "application/vnd.jam"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "musicxml"

    const-string v2, "application/vnd.recordare.musicxml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "see"

    const-string v2, "application/vnd.seemail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "irp"

    const-string v2, "application/vnd.irepository.package+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tiff"

    const-string v2, "image/tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tif"

    const-string v2, "image/tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "aam"

    const-string v2, "application/x-authorware-map"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "chat"

    const-string v2, "application/x-chat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mpkg"

    const-string v2, "application/vnd.apple.installer+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "otc"

    const-string v2, "application/vnd.oasis.opendocument.chart-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "msh"

    const-string v2, "model/mesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mesh"

    const-string v2, "model/mesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "silo"

    const-string v2, "model/mesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "t"

    const-string v2, "text/troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tr"

    const-string v2, "text/troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "roff"

    const-string v2, "text/troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "man"

    const-string v2, "text/troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "me"

    const-string v2, "text/troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ms"

    const-string v2, "text/troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dpg"

    const-string v2, "application/vnd.dpgraph"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wri"

    const-string v2, "application/x-mswrite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dts"

    const-string v2, "audio/vnd.dts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xpi"

    const-string v2, "application/x-xpinstall"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ram"

    const-string v2, "audio/x-pn-realaudio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ra"

    const-string v2, "audio/x-pn-realaudio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sdkm"

    const-string v2, "application/vnd.solent.sdkm+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sdkd"

    const-string v2, "application/vnd.solent.sdkm+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dtshd"

    const-string v2, "audio/vnd.dts.hd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "btif"

    const-string v2, "image/prs.btif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "scs"

    const-string v2, "application/scvp-cv-response"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "car"

    const-string v2, "application/vnd.curl.car"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "otf"

    const-string v2, "application/x-font-otf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "clkx"

    const-string v2, "application/vnd.crick.clicker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xbd"

    const-string v2, "application/vnd.fujixerox.docuworks.binder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ppm"

    const-string v2, "image/x-portable-pixmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wav"

    const-string v2, "audio/x-wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ssml"

    const-string v2, "application/ssml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "p7b"

    const-string v2, "application/x-pkcs7-certificates"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "spc"

    const-string v2, "application/x-pkcs7-certificates"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "kia"

    const-string v2, "application/vnd.kidspiration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rss"

    const-string v2, "application/rss+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "setreg"

    const-string v2, "application/set-registration-initiation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "qbo"

    const-string v2, "application/vnd.intu.qbo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ras"

    const-string v2, "image/x-cmu-raster"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rar"

    const-string v2, "application/x-rar-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ogx"

    const-string v2, "application/ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "class"

    const-string v2, "application/java-vm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "smf"

    const-string v2, "application/vnd.stardivision.math"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "atom"

    const-string v2, "application/atom+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sit"

    const-string v2, "application/x-stuffit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ez3"

    const-string v2, "application/vnd.ezpix-package"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mcurl"

    const-string v2, "text/vnd.curl.mcurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wmls"

    const-string v2, "text/vnd.wap.wmlscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "srx"

    const-string v2, "application/sparql-results+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wps"

    const-string v2, "application/vnd.ms-works"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wks"

    const-string v2, "application/vnd.ms-works"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wcm"

    const-string v2, "application/vnd.ms-works"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wdb"

    const-string v2, "application/vnd.ms-works"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "vcs"

    const-string v2, "text/x-vcalendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ecma"

    const-string v2, "application/ecmascript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "curl"

    const-string v2, "text/vnd.curl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "std"

    const-string v2, "application/vnd.sun.xml.draw.template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "eot"

    const-string v2, "application/vnd.ms-fontobject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "fsc"

    const-string v2, "application/vnd.fsc.weblaunch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tfm"

    const-string v2, "application/x-tex-tfm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dra"

    const-string v2, "audio/vnd.dra"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mwf"

    const-string v2, "application/vnd.mfer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hpid"

    const-string v2, "application/vnd.hp-hpid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "nml"

    const-string v2, "application/vnd.enliven"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hvp"

    const-string v2, "application/vnd.yamaha.hv-voice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "s"

    const-string v2, "text/x-asm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "asm"

    const-string v2, "text/x-asm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mcd"

    const-string v2, "application/vnd.mcd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "mts"

    const-string v2, "model/vnd.mts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "igl"

    const-string v2, "application/vnd.igloader"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "tao"

    const-string v2, "application/vnd.tao.intent-module-archive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sgml"

    const-string v2, "text/sgml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sgm"

    const-string v2, "text/sgml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "rmp"

    const-string v2, "audio/x-pn-realaudio-plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xenc"

    const-string v2, "application/xenc+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wpl"

    const-string v2, "application/vnd.ms-wpl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dxf"

    const-string v2, "image/vnd.dxf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pgm"

    const-string v2, "image/x-portable-graymap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "spot"

    const-string v2, "text/vnd.in3d.spot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "odt"

    const-string v2, "application/vnd.oasis.opendocument.text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "azs"

    const-string v2, "application/vnd.airzip.filesecure.azs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "es3"

    const-string v2, "application/vnd.eszigno3+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "et3"

    const-string v2, "application/vnd.eszigno3+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dd2"

    const-string v2, "application/vnd.oma.dd2+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "semf"

    const-string v2, "application/vnd.semf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "semd"

    const-string v2, "application/vnd.semd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "pnm"

    const-string v2, "image/x-portable-anymap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "sema"

    const-string v2, "application/vnd.sema"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "wma"

    const-string v2, "audio/x-ms-wma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "cww"

    const-string v2, "application/prs.cww"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "scm"

    const-string v2, "application/vnd.lotus-screencam"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "azf"

    const-string v2, "application/vnd.airzip.filesecure.azf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oda"

    const-string v2, "application/oda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dwg"

    const-string v2, "image/vnd.dwg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "h264"

    const-string v2, "video/h264"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "hpgl"

    const-string v2, "application/vnd.hp-hpgl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xpr"

    const-string v2, "application/vnd.is-xpr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "h263"

    const-string v2, "video/h263"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "zip"

    const-string v2, "application/zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "h261"

    const-string v2, "video/h261"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "oti"

    const-string v2, "application/vnd.oasis.opendocument.image-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "uoml"

    const-string v2, "application/vnd.uoml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "xspf"

    const-string v2, "application/xspf+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "ppam"

    const-string v2, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dtd"

    const-string v2, "application/xml-dtd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gex"

    const-string v2, "application/vnd.geometry-explorer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "gre"

    const-string v2, "application/vnd.geometry-explorer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    const-string v1, "dssc"

    const-string v2, "application/dssc+der"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "f"    # Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 848
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 849
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v4, v8

    const/16 v7, 0xb

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v0, v4, [B

    .line 851
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 853
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->getContentType([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 854
    if-eqz v2, :cond_0

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 856
    .end local v0    # "data":[B
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v4

    .line 854
    .restart local v0    # "data":[B
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 855
    .end local v0    # "data":[B
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    move-object v4, v5

    .line 856
    goto :goto_0

    .line 854
    .end local v1    # "ignored":Ljava/io/IOException;
    .restart local v0    # "data":[B
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 848
    .end local v0    # "data":[B
    :catch_2
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 854
    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v4

    move-object v4, v10

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_2
    :try_start_6
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v6, v5

    goto :goto_1
.end method

.method public static getContentType([BLjava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 866
    if-nez p0, :cond_1

    .line 867
    const/16 v16, 0x0

    .line 998
    :cond_0
    :goto_0
    return-object v16

    .line 869
    :cond_1
    const/16 v18, 0xb

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 871
    .local v17, "hdr":[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    const/16 v18, 0x0

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    .line 874
    .local v5, "c1":I
    const/16 v18, 0x1

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    .line 875
    .local v8, "c2":I
    const/16 v18, 0x2

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v9, v0, 0xff

    .line 876
    .local v9, "c3":I
    const/16 v18, 0x3

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v10, v0, 0xff

    .line 877
    .local v10, "c4":I
    const/16 v18, 0x4

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v11, v0, 0xff

    .line 878
    .local v11, "c5":I
    const/16 v18, 0x5

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v12, v0, 0xff

    .line 879
    .local v12, "c6":I
    const/16 v18, 0x6

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v13, v0, 0xff

    .line 880
    .local v13, "c7":I
    const/16 v18, 0x7

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v14, v0, 0xff

    .line 881
    .local v14, "c8":I
    const/16 v18, 0x8

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xff

    .line 882
    .local v15, "c9":I
    const/16 v18, 0x9

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    .line 883
    .local v6, "c10":I
    const/16 v18, 0xa

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v7, v0, 0xff

    .line 885
    .local v7, "c11":I
    const/16 v18, 0xca

    move/from16 v0, v18

    if-ne v5, v0, :cond_2

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v8, v0, :cond_2

    const/16 v18, 0xba

    move/from16 v0, v18

    if-ne v9, v0, :cond_2

    const/16 v18, 0xbe

    move/from16 v0, v18

    if-ne v10, v0, :cond_2

    .line 886
    const-string v16, "application/java-vm"

    goto/16 :goto_0

    .line 888
    :cond_2
    const/16 v18, 0xd0

    move/from16 v0, v18

    if-ne v5, v0, :cond_3

    const/16 v18, 0xcf

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    const/16 v18, 0x11

    move/from16 v0, v18

    if-ne v9, v0, :cond_3

    const/16 v18, 0xe0

    move/from16 v0, v18

    if-ne v10, v0, :cond_3

    const/16 v18, 0xa1

    move/from16 v0, v18

    if-ne v11, v0, :cond_3

    const/16 v18, 0xb1

    move/from16 v0, v18

    if-ne v12, v0, :cond_3

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v13, v0, :cond_3

    const/16 v18, 0xe1

    move/from16 v0, v18

    if-ne v14, v0, :cond_3

    .line 890
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 892
    .local v16, "contentType":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 895
    const-string v16, "application/msword"

    goto/16 :goto_0

    .line 897
    .end local v16    # "contentType":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x25

    move/from16 v0, v18

    if-ne v5, v0, :cond_4

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v8, v0, :cond_4

    const/16 v18, 0x44

    move/from16 v0, v18

    if-ne v9, v0, :cond_4

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v10, v0, :cond_4

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v11, v0, :cond_4

    const/16 v18, 0x31

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 898
    const-string v16, "application/pdf"

    goto/16 :goto_0

    .line 900
    :cond_4
    const/16 v18, 0x38

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    const/16 v18, 0x42

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    const/16 v18, 0x53

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    if-nez v11, :cond_5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_5

    .line 901
    const-string v16, "image/photoshop"

    goto/16 :goto_0

    .line 903
    :cond_5
    const/16 v18, 0x25

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    const/16 v18, 0x21

    move/from16 v0, v18

    if-ne v8, v0, :cond_6

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v9, v0, :cond_6

    const/16 v18, 0x53

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    .line 904
    const-string v16, "application/postscript"

    goto/16 :goto_0

    .line 906
    :cond_6
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    const/16 v18, 0xfb

    move/from16 v0, v18

    if-ne v8, v0, :cond_7

    const/16 v18, 0x30

    move/from16 v0, v18

    if-ne v9, v0, :cond_7

    .line 907
    const-string v16, "audio/mp3"

    goto/16 :goto_0

    .line 909
    :cond_7
    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    const/16 v18, 0x44

    move/from16 v0, v18

    if-ne v8, v0, :cond_8

    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v9, v0, :cond_8

    .line 910
    const-string v16, "audio/mp3"

    goto/16 :goto_0

    .line 912
    :cond_8
    const/16 v18, 0xac

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    const/16 v18, 0xed

    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    .line 914
    const-string v16, "application/x-java-serialized-object"

    goto/16 :goto_0

    .line 917
    :cond_9
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v5, v0, :cond_11

    .line 918
    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v8, v0, :cond_f

    const/16 v18, 0x68

    move/from16 v0, v18

    if-ne v8, v0, :cond_b

    const/16 v18, 0x74

    move/from16 v0, v18

    if-ne v9, v0, :cond_a

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v10, v0, :cond_a

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-eq v11, v0, :cond_f

    :cond_a
    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v9, v0, :cond_b

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v10, v0, :cond_b

    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v11, v0, :cond_f

    :cond_b
    const/16 v18, 0x62

    move/from16 v0, v18

    if-ne v8, v0, :cond_c

    const/16 v18, 0x6f

    move/from16 v0, v18

    if-ne v9, v0, :cond_c

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v10, v0, :cond_c

    const/16 v18, 0x79

    move/from16 v0, v18

    if-eq v11, v0, :cond_f

    :cond_c
    const/16 v18, 0x48

    move/from16 v0, v18

    if-ne v8, v0, :cond_e

    const/16 v18, 0x54

    move/from16 v0, v18

    if-ne v9, v0, :cond_d

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    const/16 v18, 0x4c

    move/from16 v0, v18

    if-eq v11, v0, :cond_f

    :cond_d
    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v9, v0, :cond_e

    const/16 v18, 0x41

    move/from16 v0, v18

    if-ne v10, v0, :cond_e

    const/16 v18, 0x44

    move/from16 v0, v18

    if-eq v11, v0, :cond_f

    :cond_e
    const/16 v18, 0x42

    move/from16 v0, v18

    if-ne v8, v0, :cond_10

    const/16 v18, 0x4f

    move/from16 v0, v18

    if-ne v9, v0, :cond_10

    const/16 v18, 0x44

    move/from16 v0, v18

    if-ne v10, v0, :cond_10

    const/16 v18, 0x59

    move/from16 v0, v18

    if-ne v11, v0, :cond_10

    .line 921
    :cond_f
    const-string v16, "text/html"

    goto/16 :goto_0

    .line 923
    :cond_10
    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v8, v0, :cond_11

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v9, v0, :cond_11

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v10, v0, :cond_11

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-ne v11, v0, :cond_11

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v12, v0, :cond_11

    .line 924
    const-string v16, "application/xml"

    goto/16 :goto_0

    .line 928
    :cond_11
    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v5, v0, :cond_12

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v8, v0, :cond_12

    .line 929
    if-nez v9, :cond_12

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v10, v0, :cond_12

    if-nez v11, :cond_12

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v12, v0, :cond_12

    if-nez v13, :cond_12

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v14, v0, :cond_12

    .line 930
    const-string v16, "application/xml"

    goto/16 :goto_0

    .line 933
    :cond_12
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v5, v0, :cond_13

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v8, v0, :cond_13

    .line 934
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v9, v0, :cond_13

    if-nez v10, :cond_13

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v11, v0, :cond_13

    if-nez v12, :cond_13

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v13, v0, :cond_13

    if-nez v14, :cond_13

    .line 935
    const-string v16, "application/xml"

    goto/16 :goto_0

    .line 938
    :cond_13
    const/16 v18, 0x42

    move/from16 v0, v18

    if-ne v5, v0, :cond_14

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v8, v0, :cond_14

    .line 939
    const-string v16, "image/bmp"

    goto/16 :goto_0

    .line 941
    :cond_14
    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v5, v0, :cond_15

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v8, v0, :cond_15

    const/16 v18, 0x2a

    move/from16 v0, v18

    if-ne v9, v0, :cond_15

    if-nez v10, :cond_15

    .line 942
    const-string v16, "image/tiff"

    goto/16 :goto_0

    .line 944
    :cond_15
    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v5, v0, :cond_16

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v8, v0, :cond_16

    if-nez v9, :cond_16

    const/16 v18, 0x2a

    move/from16 v0, v18

    if-ne v10, v0, :cond_16

    .line 945
    const-string v16, "image/tiff"

    goto/16 :goto_0

    .line 947
    :cond_16
    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v5, v0, :cond_17

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v8, v0, :cond_17

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v9, v0, :cond_17

    const/16 v18, 0x38

    move/from16 v0, v18

    if-ne v10, v0, :cond_17

    .line 948
    const-string v16, "image/gif"

    goto/16 :goto_0

    .line 950
    :cond_17
    const/16 v18, 0x23

    move/from16 v0, v18

    if-ne v5, v0, :cond_18

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v8, v0, :cond_18

    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v9, v0, :cond_18

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v10, v0, :cond_18

    .line 951
    const-string v16, "image/x-bitmap"

    goto/16 :goto_0

    .line 953
    :cond_18
    const/16 v18, 0x21

    move/from16 v0, v18

    if-ne v5, v0, :cond_19

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v8, v0, :cond_19

    const/16 v18, 0x58

    move/from16 v0, v18

    if-ne v9, v0, :cond_19

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v10, v0, :cond_19

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v11, v0, :cond_19

    const/16 v18, 0x32

    move/from16 v0, v18

    if-ne v12, v0, :cond_19

    .line 954
    const-string v16, "image/x-pixmap"

    goto/16 :goto_0

    .line 956
    :cond_19
    const/16 v18, 0x89

    move/from16 v0, v18

    if-ne v5, v0, :cond_1a

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v8, v0, :cond_1a

    const/16 v18, 0x4e

    move/from16 v0, v18

    if-ne v9, v0, :cond_1a

    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v10, v0, :cond_1a

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v11, v0, :cond_1a

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v12, v0, :cond_1a

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v13, v0, :cond_1a

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v14, v0, :cond_1a

    .line 957
    const-string v16, "image/png"

    goto/16 :goto_0

    .line 959
    :cond_1a
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v5, v0, :cond_1d

    const/16 v18, 0xd8

    move/from16 v0, v18

    if-ne v8, v0, :cond_1d

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v9, v0, :cond_1d

    .line 960
    const/16 v18, 0xe0

    move/from16 v0, v18

    if-ne v10, v0, :cond_1b

    .line 961
    const-string v16, "image/jpeg"

    goto/16 :goto_0

    .line 967
    :cond_1b
    const/16 v18, 0xe1

    move/from16 v0, v18

    if-ne v10, v0, :cond_1c

    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v13, v0, :cond_1c

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v14, v0, :cond_1c

    const/16 v18, 0x69

    move/from16 v0, v18

    if-ne v15, v0, :cond_1c

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v6, v0, :cond_1c

    if-nez v7, :cond_1c

    .line 968
    const-string v16, "image/jpeg"

    goto/16 :goto_0

    .line 970
    :cond_1c
    const/16 v18, 0xee

    move/from16 v0, v18

    if-ne v10, v0, :cond_1d

    .line 971
    const-string v16, "image/jpg"

    goto/16 :goto_0

    .line 978
    :cond_1d
    const/16 v18, 0x41

    move/from16 v0, v18

    if-ne v5, v0, :cond_1e

    const/16 v18, 0x43

    move/from16 v0, v18

    if-ne v8, v0, :cond_1e

    if-nez v13, :cond_1e

    if-nez v14, :cond_1e

    if-nez v15, :cond_1e

    if-nez v6, :cond_1e

    if-nez v7, :cond_1e

    .line 979
    const-string v16, "application/acad"

    goto/16 :goto_0

    .line 981
    :cond_1e
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v5, v0, :cond_1f

    const/16 v18, 0x73

    move/from16 v0, v18

    if-ne v8, v0, :cond_1f

    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v9, v0, :cond_1f

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v10, v0, :cond_1f

    .line 982
    const-string v16, "audio/basic"

    goto/16 :goto_0

    .line 984
    :cond_1f
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v5, v0, :cond_20

    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v8, v0, :cond_20

    const/16 v18, 0x73

    move/from16 v0, v18

    if-ne v9, v0, :cond_20

    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v10, v0, :cond_20

    .line 985
    const-string v16, "audio/basic"

    goto/16 :goto_0

    .line 988
    :cond_20
    const/16 v18, 0x52

    move/from16 v0, v18

    if-ne v5, v0, :cond_21

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v8, v0, :cond_21

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v9, v0, :cond_21

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v10, v0, :cond_21

    .line 989
    const-string v16, "audio/x-wav"

    goto/16 :goto_0

    .line 991
    :cond_21
    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v5, v0, :cond_22

    const/16 v18, 0x4b

    move/from16 v0, v18

    if-ne v8, v0, :cond_22

    .line 993
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 994
    .restart local v16    # "contentType":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 996
    const-string v16, "application/zip"

    goto/16 :goto_0

    .line 998
    .end local v16    # "contentType":Ljava/lang/String;
    :cond_22
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1006
    if-nez p0, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-object v2

    .line 1009
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1011
    .local v1, "lastIdx":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1012
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "extention":Ljava/lang/String;
    sget-object v2, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->mimeTypes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method
