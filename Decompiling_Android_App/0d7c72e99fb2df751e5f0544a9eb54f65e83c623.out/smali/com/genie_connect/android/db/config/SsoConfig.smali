.class public Lcom/genie_connect/android/db/config/SsoConfig;
.super Ljava/lang/Object;
.source "SsoConfig.java"


# instance fields
.field private mSsoEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ssoEnabled"
    .end annotation
.end field

.field private mSsoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ssoUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "ssoConfig"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ SSOCONFIG: the ssoconfig constructor with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    const-string v0, "ssoUrl"

    invoke-static {p1, v0, v3}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/SsoConfig;->mSsoUrl:Ljava/lang/String;

    .line 33
    const-string v0, "ssoEnabled"

    invoke-static {p1, v0, v2}, Lcom/genie_connect/android/db/config/BaseConfig;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/SsoConfig;->mSsoEnabled:Z

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    iput-object v3, p0, Lcom/genie_connect/android/db/config/SsoConfig;->mSsoUrl:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/SsoConfig;->mSsoEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public getSsoEnabled()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SsoConfig;->mSsoEnabled:Z

    return v0
.end method

.method public getSsoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SsoConfig;->mSsoUrl:Ljava/lang/String;

    return-object v0
.end method
