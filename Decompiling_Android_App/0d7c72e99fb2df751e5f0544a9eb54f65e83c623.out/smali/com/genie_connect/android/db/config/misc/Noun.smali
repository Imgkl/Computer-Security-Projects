.class public Lcom/genie_connect/android/db/config/misc/Noun;
.super Ljava/lang/Object;
.source "Noun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/misc/Noun$1;,
        Lcom/genie_connect/android/db/config/misc/Noun$NounType;,
        Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    }
.end annotation


# static fields
.field private static final ARTICLED:Ljava/lang/String; = "articled"

.field private static final PLURAL:Ljava/lang/String; = "plural"

.field private static final SINGULAR:Ljava/lang/String; = "singular"


# instance fields
.field private final mArticled:Ljava/lang/String;

.field private final mPlural:Ljava/lang/String;

.field private final mSingular:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "articled"    # Ljava/lang/String;
    .param p2, "plural"    # Ljava/lang/String;
    .param p3, "singular"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mArticled:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mPlural:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mSingular:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v1, "articled"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "tmp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mArticled:Ljava/lang/String;

    .line 123
    :goto_0
    const-string v1, "plural"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mPlural:Ljava/lang/String;

    .line 131
    :goto_1
    const-string v1, "singular"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mSingular:Ljava/lang/String;

    .line 137
    :goto_2
    return-void

    .line 120
    :cond_0
    iput-object v2, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mArticled:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_1
    iput-object v2, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mPlural:Ljava/lang/String;

    goto :goto_1

    .line 135
    :cond_2
    iput-object v2, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mSingular:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public get(Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    .prologue
    .line 147
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$1;->$SwitchMap$com$genie_connect$android$db$config$misc$Noun$NounType:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mSingular:Ljava/lang/String;

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mPlural:Ljava/lang/String;

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/Noun;->mArticled:Ljava/lang/String;

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
