.class public Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;
.super Ljava/lang/Object;
.source "VCardSourceDetector.java"

# interfaces
.implements Lcom/a_vcard/android/syncml/pim/VBuilder;


# static fields
.field private static APPLE_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static FOMA_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_APPLE:I = 0x1

.field static final TYPE_FOMA:I = 0x3

.field private static TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String; = null

.field static final TYPE_JAPANESE_MOBILE_PHONE:I = 0x2

.field static final TYPE_UNKNOWN:I = 0x0

.field static final TYPE_WINDOWS_MOBILE_JP:I = 0x4

.field private static WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNeedParseSpecifiedCharset:Z

.field private mSpecifiedCharset:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "X-PHONETIC-FIRST-NAME"

    aput-object v2, v1, v3

    const-string v2, "X-PHONETIC-MIDDLE-NAME"

    aput-object v2, v1, v4

    const-string v2, "X-PHONETIC-LAST-NAME"

    aput-object v2, v1, v5

    const-string v2, "X-ABADR"

    aput-object v2, v1, v6

    const-string v2, "X-ABUID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "X-GNO"

    aput-object v2, v1, v3

    const-string v2, "X-GN"

    aput-object v2, v1, v4

    const-string v2, "X-REDUCTION"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "X-MICROSOFT-ASST_TEL"

    aput-object v2, v1, v3

    const-string v2, "X-MICROSOFT-ASSISTANT"

    aput-object v2, v1, v4

    const-string v2, "X-MICROSOFT-OFFICELOC"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "X-SD-VERN"

    aput-object v2, v1, v3

    const-string v2, "X-SD-FORMAT_VER"

    aput-object v2, v1, v4

    const-string v2, "X-SD-CATEGORIES"

    aput-object v2, v1, v5

    const-string v2, "X-SD-CLASS"

    aput-object v2, v1, v6

    const-string v2, "X-SD-DCREATED"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "X-SD-DESCRIPTION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    .line 55
    const-string v0, "X-SD-CHAR_CODE"

    sput-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public endProperty()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public endRecord()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public getEstimatedCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    .line 148
    :goto_0
    return-object v0

    .line 140
    :cond_0
    iget v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 148
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :pswitch_0
    const-string v0, "SHIFT_JIS"

    goto :goto_0

    .line 146
    :pswitch_1
    const-string v0, "UTF-8"

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getType()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    return v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 93
    sget-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    .line 95
    iput-boolean v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mNeedParseSpecifiedCharset:Z

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const/4 v0, 0x4

    iput v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    goto :goto_0

    .line 103
    :cond_2
    sget-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iput v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    goto :goto_0

    .line 105
    :cond_3
    sget-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    goto :goto_0

    .line 107
    :cond_4
    sget-object v0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mType:I

    goto :goto_0
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mNeedParseSpecifiedCharset:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    .line 125
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public startProperty()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/VCardSourceDetector;->mNeedParseSpecifiedCharset:Z

    .line 77
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 72
    return-void
.end method
