.class public final Lcom/genie_connect/android/db/config/widgets/FlickrConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "FlickrConfig.java"


# instance fields
.field private final mUser:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->FLICKR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 43
    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;->mUser:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;->mUser:Ljava/lang/String;

    return-object v0
.end method
