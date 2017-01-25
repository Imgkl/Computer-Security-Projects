.class public Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# static fields
.field public static final TYPE_MECARD:I = 0x1

.field public static final TYPE_VCARD:I = 0x0

.field public static final VERSION_VCARD21:Ljava/lang/String; = "vcard2.1"

.field public static final VERSION_VCARD21_INT:I = 0x1

.field public static final VERSION_VCARD30:Ljava/lang/String; = "vcard3.0"

.field public static final VERSION_VCARD30_INT:I = 0x2


# instance fields
.field mParser:Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mParser:Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;

    .line 38
    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "vcardStr"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 54
    const-string v2, "\nVERSION:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "verIdx":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 56
    const-string/jumbo v2, "vcard2.1"

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 68
    .end local v0    # "verIdx":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string/jumbo v3, "vcard2.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    new-instance v2, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;-><init>()V

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mParser:Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string/jumbo v3, "vcard3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    new-instance v2, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V30;-><init>()V

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mParser:Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;

    .line 72
    :cond_2
    return-void

    .line 58
    .restart local v0    # "verIdx":I
    :cond_3
    const-string v2, "\n"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "verStr":Ljava/lang/String;
    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 61
    const-string/jumbo v2, "vcard2.1"

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_4
    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 63
    const-string/jumbo v2, "vcard3.0"

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_5
    const-string/jumbo v2, "vcard2.1"

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private verifyVCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "vcardStr"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->judgeVersion(Ljava/lang/String;)V

    .line 84
    const-string v3, "\r\n"

    const-string v4, "\n"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "strlist":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "v21str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 88
    aget-object v3, v1, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 89
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 90
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VDataBuilder;)Z
    .locals 1
    .param p1, "vcardStr"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/a_vcard/android/syncml/pim/VDataBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "US-ASCII"

    invoke-virtual {p0, p1, v0, p2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VDataBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VDataBuilder;)Z
    .locals 4
    .param p1, "vcardStr"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "builder"    # Lcom/a_vcard/android/syncml/pim/VDataBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->verifyVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mParser:Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2, p2, p3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VBuilder;)Z

    move-result v0

    .line 129
    .local v0, "isSuccess":Z
    if-nez v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string/jumbo v2, "vcard2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string/jumbo v1, "vcard3.0"

    invoke-direct {p0, v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->setVersion(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1, p3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->parse(Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VDataBuilder;)Z

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 139
    :cond_0
    new-instance v1, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;

    const-string v2, "parse failed.(even use 3.0 parser)"

    invoke-direct {v1, v2}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
