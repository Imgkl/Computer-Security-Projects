.class Lcom/urbanairship/richpush/UserResponse;
.super Ljava/lang/Object;
.source "UserResponse.java"


# instance fields
.field private userId:Ljava/lang/String;

.field private userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userToken"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/urbanairship/richpush/UserResponse;->userId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/urbanairship/richpush/UserResponse;->userToken:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/urbanairship/richpush/UserResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method getUserToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/urbanairship/richpush/UserResponse;->userToken:Ljava/lang/String;

    return-object v0
.end method
