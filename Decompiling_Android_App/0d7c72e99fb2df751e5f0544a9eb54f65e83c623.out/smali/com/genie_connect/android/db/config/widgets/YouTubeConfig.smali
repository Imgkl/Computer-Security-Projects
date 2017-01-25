.class public final Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "YouTubeConfig.java"


# instance fields
.field private final mTag:Ljava/lang/String;

.field private final mUser:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->YOUTUBE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 43
    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;->mUser:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;->mTag:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/YouTubeConfig;->mUser:Ljava/lang/String;

    return-object v0
.end method
