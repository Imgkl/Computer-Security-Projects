.class public Lcom/eventgenie/android/utils/social/NetworkResultSocial;
.super Ljava/lang/Object;
.source "NetworkResultSocial.java"


# instance fields
.field private fromCache:Z

.field private final mTweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->message:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->fromCache:Z

    .line 59
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->success:Z

    .line 60
    iput-object v1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->mTweets:Ljava/util/List;

    .line 61
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->message:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->fromCache:Z

    .line 52
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->success:Z

    .line 53
    iput-object p2, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->message:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->mTweets:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "fromCache"    # Z

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->message:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->fromCache:Z

    .line 44
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->success:Z

    .line 45
    iput-object p2, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->message:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->fromCache:Z

    .line 47
    iput-object v1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->mTweets:Ljava/util/List;

    .line 48
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->message:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->fromCache:Z

    .line 65
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->success:Z

    .line 66
    iput-object p2, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->mTweets:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTweets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->mTweets:Ljava/util/List;

    return-object v0
.end method

.method public isFromCache()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->fromCache:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->success:Z

    return v0
.end method

.method public setFromCache(Z)V
    .locals 0
    .param p1, "fromCache"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->fromCache:Z

    .line 95
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->message:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->success:Z

    .line 75
    return-void
.end method
