.class public Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;
.super Ljava/lang/Object;
.source "RssFeedConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RssFeed"
.end annotation


# static fields
.field public static final TYPE_GRID:I = 0x1

.field public static final TYPE_LIST:I


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mThumbnail:Ljava/lang/String;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "thumbnail"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mName:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mThumbnail:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mUrl:Ljava/lang/String;

    .line 98
    move v0, p4

    .line 101
    .local v0, "tmp":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 102
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mType:I

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    iput v0, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mType:I

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mName:Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "thumbnail"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mThumbnail:Ljava/lang/String;

    .line 112
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mUrl:Ljava/lang/String;

    .line 114
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "tmp":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 118
    :cond_0
    iput v2, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mType:I

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    iput v0, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mType:I

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->mUrl:Ljava/lang/String;

    return-object v0
.end method
