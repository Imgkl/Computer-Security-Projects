.class public Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;
.super Ljava/lang/Object;
.source "VCardParser_V21.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final STATE_GROUP_OR_PROPNAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2

.field private static final sAvailableEncodingV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailablePropertyNameV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownValueSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

.field private mCanceled:Z

.field protected mEncoding:Ljava/lang/String;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Ljava/io/BufferedReader;

.field private mTimeEndRecord:J

.field private mTimeHandlePropertyValue1:J

.field private mTimeHandlePropertyValue2:J

.field private mTimeHandlePropertyValue3:J

.field private mTimeParseItem1:J

.field private mTimeParseItem2:J

.field private mTimeParseItem3:J

.field private mTimeStartRecord:J

.field private mTimeTotal:J

.field protected mWarningValueMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final sDefaultEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOM"

    aput-object v2, v1, v4

    const-string v2, "INTL"

    aput-object v2, v1, v5

    const-string v2, "POSTAL"

    aput-object v2, v1, v6

    const-string v2, "PARCEL"

    aput-object v2, v1, v7

    const-string v2, "HOME"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "WORK"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PREF"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "FAX"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MSG"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "VIDEO"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "AOL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "APPLELINK"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ATTMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CIS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "EWORLD"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "X400"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "GIF"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "CGM"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "WMF"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "BMP"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "MET"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "PMB"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DIB"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "PICT"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "TIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "PDF"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "PS"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "JPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "QTIME"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "MPEG2"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "AVI"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "WAVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "AIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "PCM"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "X509"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "PGP"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "INLINE"

    aput-object v2, v1, v4

    const-string v2, "URL"

    aput-object v2, v1, v5

    const-string v2, "CONTENT-ID"

    aput-object v2, v1, v6

    const-string v2, "CID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "LOGO"

    aput-object v2, v1, v5

    const-string v2, "PHOTO"

    aput-object v2, v1, v6

    const-string v2, "LABEL"

    aput-object v2, v1, v7

    const-string v2, "FN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sAvailablePropertyNameV21:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "7BIT"

    aput-object v2, v1, v4

    const-string v2, "8BIT"

    aput-object v2, v1, v5

    const-string v2, "QUOTED-PRINTABLE"

    aput-object v2, v1, v6

    const-string v2, "BASE64"

    aput-object v2, v1, v7

    const-string v2, "B"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    .line 74
    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 76
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sDefaultEncoding:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;)V
    .locals 2
    .param p1, "detector"    # Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    .line 74
    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 76
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sDefaultEncoding:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    .line 117
    :cond_0
    return-void
.end method

.method private static isLetter(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 952
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    .line 953
    :cond_1
    const/4 v0, 0x1

    .line 955
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOneVCard(Z)Z
    .locals 10
    .param p1, "firstReading"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "allowGarbage":Z
    if-eqz p1, :cond_2

    .line 201
    iget v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v6, :cond_2

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v6, :cond_2

    .line 203
    invoke-virtual {p0, v0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 229
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v4

    .line 206
    .restart local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    iget-object v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v6, :cond_3

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 217
    .local v2, "start":J
    iget-object v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    const-string v7, "VCARD"

    invoke-interface {v6, v7}, Lcom/a_vcard/android/syncml/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 218
    iget-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartRecord:J

    .line 220
    .end local v2    # "start":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 221
    .restart local v2    # "start":J
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseItems()V

    .line 223
    invoke-virtual {p0, v5, v4}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 224
    iget-object v4, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v4, :cond_4

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 226
    iget-object v4, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v4}, Lcom/a_vcard/android/syncml/pim/VBuilder;->endRecord()V

    .line 227
    iget-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndRecord:J

    :cond_4
    move v4, v5

    .line 229
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mCanceled:Z

    .line 922
    return-void
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :goto_0
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 749
    new-instance v2, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 755
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 186
    new-instance v1, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    return-object v0
.end method

.method protected getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x0

    .line 709
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 711
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 712
    .local v2, "pos":I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v0, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :goto_0
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 721
    new-instance v3, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    const-string v4, "File ended during parsing quoted-printable String"

    invoke-direct {v3, v4}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 724
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 726
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 727
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    .line 729
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 732
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 738
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local p1    # "firstString":Ljava/lang/String;
    :cond_4
    return-object p1
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .locals 2
    .param p1, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 827
    new-instance v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    const-string v1, "AGENT Property is not supported."

    invoke-direct {v0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p2}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 646
    :cond_0
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .locals 2
    .param p1, "charsetval"    # Ljava/lang/String;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 602
    :cond_0
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .locals 3
    .param p1, "pencodingval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p0, p1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->isValidEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 587
    :cond_1
    iput-object p1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 591
    return-void

    .line 589
    :cond_2
    new-instance v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .locals 7
    .param p1, "langval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 611
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "strArray":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 613
    new-instance v4, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 615
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 616
    .local v3, "tmp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 617
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 618
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 619
    new-instance v4, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 617
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_2
    array-length v4, v2

    if-le v4, v6, :cond_4

    .line 624
    aget-object v3, v2, v6

    .line 625
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 626
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 627
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 628
    new-instance v4, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 626
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    :cond_4
    iget-object v4, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v4, :cond_5

    .line 633
    iget-object v4, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 634
    iget-object v4, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v4, p1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 636
    :cond_5
    return-void
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 784
    iget-object v7, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v8, "QUOTED-PRINTABLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 785
    invoke-virtual {p0, p2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 788
    :cond_0
    iget-object v7, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v7, :cond_5

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 793
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 794
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 795
    .local v1, "ch":C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_2

    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_2

    .line 796
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 797
    .local v5, "nextCh":C
    invoke-virtual {p0, v5}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->maybeUnescape(C)Ljava/lang/String;

    move-result-object v6

    .line 798
    .local v6, "unescapedString":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 799
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    add-int/lit8 v2, v2, 0x1

    .line 793
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    .restart local v5    # "nextCh":C
    .restart local v6    # "unescapedString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 804
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_2
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_3

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 808
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 811
    .end local v1    # "ch":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v7, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v7, v4}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 814
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .locals 6
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 522
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "strArray":[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_6

    .line 524
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "paramName":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "paramValue":Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    invoke-virtual {p0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    .line 544
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 528
    .restart local v0    # "paramName":Ljava/lang/String;
    .restart local v1    # "paramValue":Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    invoke-virtual {p0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    invoke-virtual {p0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 533
    invoke-virtual {p0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 535
    invoke-virtual {p0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 537
    invoke-virtual {p0, v0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_5
    new-instance v3, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 542
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 653
    .local v2, "start":J
    invoke-virtual {p0, p2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v5, :cond_0

    .line 655
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v4, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 659
    .end local v4    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    .line 694
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 660
    .end local v2    # "start":J
    :cond_1
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "BASE64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 662
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 666
    .restart local v2    # "start":J
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .restart local v1    # "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v5, :cond_3

    .line 668
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .restart local v4    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v1    # "result":Ljava/lang/String;
    .end local v4    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    iget-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "error":Ljava/lang/OutOfMemoryError;
    const-string v5, "^ OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 674
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v5, :cond_3

    .line 675
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    goto :goto_1

    .line 680
    .end local v0    # "error":Ljava/lang/OutOfMemoryError;
    .end local v2    # "start":J
    :cond_4
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "7BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "8BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ The encoding unsupported by vCard spec: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 686
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 687
    .restart local v2    # "start":J
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v5, :cond_6

    .line 688
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .restart local v4    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 692
    .end local v4    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    goto/16 :goto_0
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 3
    .param p1, "ptypeval"    # Ljava/lang/String;

    .prologue
    .line 550
    move-object v0, p1

    .line 551
    .local v0, "upperTypeValue":Ljava/lang/String;
    sget-object v1, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ Type unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    const-string v2, "TYPE"

    invoke-interface {v1, v2}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v1, v0}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 560
    :cond_1
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "pvalueval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 566
    sget-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v0, p1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 575
    :cond_1
    return-void

    .line 573
    :cond_2
    new-instance v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isValidEncoding(Ljava/lang/String;)Z
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->sAvailablePropertyNameV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ Property name unsupported by vCard 2.1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 158
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescape(C)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 858
    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    .line 859
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 861
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 847
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VBuilder;Z)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "builder"    # Lcom/a_vcard/android/syncml/pim/VBuilder;
    .param p4, "canceled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 931
    iput-boolean p4, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mCanceled:Z

    .line 932
    invoke-virtual {p0, p1, p2, p3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VBuilder;)Z

    .line 933
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lcom/a_vcard/android/syncml/pim/VBuilder;)Z
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "builder"    # Lcom/a_vcard/android/syncml/pim/VBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 913
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0, p2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VBuilder;)Z
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "builder"    # Lcom/a_vcard/android/syncml/pim/VBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 895
    new-instance v2, Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    .line 897
    iput-object p3, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 900
    .local v0, "start":J
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v2}, Lcom/a_vcard/android/syncml/pim/VBuilder;->start()V

    .line 903
    :cond_0
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseVCardFile()V

    .line 904
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v2, :cond_1

    .line 905
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v2}, Lcom/a_vcard/android/syncml/pim/VBuilder;->end()V

    .line 907
    :cond_1
    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeTotal:J

    .line 909
    const/4 v2, 0x1

    return v2
.end method

.method protected parseItem()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 379
    const-string v8, "8BIT"

    iput-object v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "line":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 384
    .local v4, "start":J
    invoke-virtual {p0, v0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "propertyNameAndValue":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 421
    :goto_0
    return v6

    .line 388
    :cond_0
    array-length v8, v2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 389
    new-instance v6, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 391
    :cond_1
    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "propertyName":Ljava/lang/String;
    aget-object v3, v2, v6

    .line 394
    .local v3, "propertyValue":Ljava/lang/String;
    iget-wide v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem1:J

    .line 396
    const-string v6, "ADR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ORG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "N"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 400
    invoke-virtual {p0, v1, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-wide v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem3:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem3:J

    move v6, v7

    .line 402
    goto :goto_0

    .line 403
    :cond_3
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 404
    invoke-virtual {p0, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v7

    .line 405
    goto :goto_0

    .line 406
    :cond_4
    invoke-virtual {p0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 407
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 408
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 409
    new-instance v6, Lcom/a_vcard/android/syncml/pim/vcard/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, Lcom/a_vcard/android/syncml/pim/vcard/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 411
    :cond_5
    new-instance v6, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown BEGIN type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 413
    :cond_6
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 415
    new-instance v6, Lcom/a_vcard/android/syncml/pim/vcard/VCardVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incompatible version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/a_vcard/android/syncml/pim/vcard/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 418
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 419
    invoke-virtual {p0, v1, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-wide v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem2:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem2:J

    move v6, v7

    .line 421
    goto/16 :goto_0

    .line 424
    :cond_8
    new-instance v6, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown property name: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseItems()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "ended":Z
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->startProperty()V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseItem()Z

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 351
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->endProperty()V

    .line 355
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 357
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->startProperty()V

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseItem()Z

    move-result v0

    .line 363
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 365
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->endProperty()V

    goto :goto_0

    .line 369
    :cond_3
    return-void
.end method

.method protected parseVCardFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 126
    .local v0, "firstReading":Z
    :goto_0
    iget-boolean v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mCanceled:Z

    if-eqz v3, :cond_1

    .line 135
    :cond_0
    iget v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v3, :cond_2

    .line 136
    const/4 v2, 0x1

    .line 137
    .local v2, "useCache":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v3, :cond_2

    .line 138
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 139
    const/4 v2, 0x0

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    .end local v1    # "i":I
    .end local v2    # "useCache":Z
    :cond_1
    invoke-direct {p0, v0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_2
    return-void
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .param p1, "allowGarbage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 282
    :goto_0
    return v3

    .line 245
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 249
    const-string v5, ":"

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "strArray":[Ljava/lang/String;
    array-length v0, v2

    .line 275
    .local v0, "length":I
    if-ne v0, v7, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 278
    goto :goto_0

    .line 279
    :cond_2
    if-nez p1, :cond_4

    .line 280
    iget v4, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v4, :cond_3

    .line 281
    iput-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_3
    new-instance v3, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :cond_4
    if-nez p1, :cond_0

    .line 291
    new-instance v3, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .locals 5
    .param p1, "useCache"    # Z
    .param p2, "allowGarbage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 308
    :cond_0
    if-eqz p1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 323
    .local v0, "line":Ljava/lang/String;
    :goto_0
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "strArray":[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    :goto_1
    return-void

    .line 314
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "strArray":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0    # "line":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 316
    new-instance v2, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 328
    .restart local v1    # "strArray":[Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 329
    new-instance v2, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_4
    const/4 p1, 0x0

    .line 332
    if-nez p2, :cond_0

    goto :goto_1
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3b

    const/16 v12, 0x3a

    const/16 v11, 0x22

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 435
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 436
    .local v3, "length":I
    const/4 v7, 0x0

    .line 437
    .local v7, "state":I
    const/4 v4, 0x0

    .line 439
    .local v4, "nameIndex":I
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 441
    .local v6, "propertyNameAndValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_c

    .line 442
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 443
    .local v0, "ch":C
    packed-switch v7, :pswitch_data_0

    .line 441
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :pswitch_0
    if-ne v0, v12, :cond_4

    .line 446
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, "propertyName":Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 448
    iput-object p1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 449
    const/4 v6, 0x0

    .line 494
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "propertyNameAndValue":[Ljava/lang/String;
    :goto_2
    return-object v6

    .line 451
    .restart local v5    # "propertyName":Ljava/lang/String;
    .restart local v6    # "propertyNameAndValue":[Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v8, :cond_2

    .line 452
    iget-object v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v8, v5}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 454
    :cond_2
    aput-object v5, v6, v10

    .line 455
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_3

    .line 456
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    goto :goto_2

    .line 458
    :cond_3
    const-string v8, ""

    aput-object v8, v6, v9

    goto :goto_2

    .line 461
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_4
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_6

    .line 462
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "groupName":Ljava/lang/String;
    iget-object v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v8, :cond_5

    .line 464
    iget-object v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v8, v1}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyGroup(Ljava/lang/String;)V

    .line 466
    :cond_5
    add-int/lit8 v4, v2, 0x1

    .line 467
    goto :goto_1

    .end local v1    # "groupName":Ljava/lang/String;
    :cond_6
    if-ne v0, v13, :cond_0

    .line 468
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 469
    .restart local v5    # "propertyName":Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 470
    iput-object p1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 471
    const/4 v6, 0x0

    goto :goto_2

    .line 473
    :cond_7
    iget-object v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    if-eqz v8, :cond_8

    .line 474
    iget-object v8, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mBuilder:Lcom/a_vcard/android/syncml/pim/VBuilder;

    invoke-interface {v8, v5}, Lcom/a_vcard/android/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 476
    :cond_8
    aput-object v5, v6, v10

    .line 477
    add-int/lit8 v4, v2, 0x1

    .line 478
    const/4 v7, 0x1

    .line 479
    goto :goto_1

    .line 482
    .end local v5    # "propertyName":Ljava/lang/String;
    :pswitch_1
    if-ne v0, v11, :cond_9

    .line 483
    const/4 v7, 0x2

    goto :goto_1

    .line 484
    :cond_9
    if-ne v0, v13, :cond_a

    .line 485
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 486
    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    .line 487
    :cond_a
    if-ne v0, v12, :cond_0

    .line 488
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 489
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_b

    .line 490
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    goto :goto_2

    .line 492
    :cond_b
    const-string v8, ""

    aput-object v8, v6, v9

    goto :goto_2

    .line 498
    :pswitch_2
    if-ne v0, v11, :cond_0

    .line 499
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 505
    .end local v0    # "ch":C
    :cond_c
    new-instance v8, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showDebugInfo()V
    .locals 4

    .prologue
    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ total parsing time:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    instance-of v0, v0, Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;

    if-eqz v0, :cond_0

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ total readLine time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    check-cast v0, Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;

    invoke-virtual {v0}, Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 941
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ mTimeStartRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeStartRecord:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ mTimeEndRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeEndRecord:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ mTimeParseItem1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ mTimeParseItem2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ mTimeParseItem3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeParseItem3:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ mTimeHandlePropertyValue1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ mTimeHandlePropertyValue2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ mTimeHandlePropertyValue3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 949
    return-void
.end method
