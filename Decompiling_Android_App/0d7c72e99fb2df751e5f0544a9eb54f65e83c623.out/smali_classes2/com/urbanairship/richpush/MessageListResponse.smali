.class Lcom/urbanairship/richpush/MessageListResponse;
.super Ljava/lang/Object;
.source "MessageListResponse.java"


# instance fields
.field private final lastModifiedTimeMS:J

.field private final serverMessages:[Landroid/content/ContentValues;

.field private final status:I


# direct methods
.method public constructor <init>([Landroid/content/ContentValues;IJ)V
    .locals 1
    .param p1, "serverMessages"    # [Landroid/content/ContentValues;
    .param p2, "status"    # I
    .param p3, "lastModifiedTimeMS"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/urbanairship/richpush/MessageListResponse;->serverMessages:[Landroid/content/ContentValues;

    .line 48
    iput p2, p0, Lcom/urbanairship/richpush/MessageListResponse;->status:I

    .line 49
    iput-wide p3, p0, Lcom/urbanairship/richpush/MessageListResponse;->lastModifiedTimeMS:J

    .line 51
    return-void
.end method


# virtual methods
.method public getLastModifiedTimeMS()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/urbanairship/richpush/MessageListResponse;->lastModifiedTimeMS:J

    return-wide v0
.end method

.method public getServerMessages()[Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/richpush/MessageListResponse;->serverMessages:[Landroid/content/ContentValues;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/urbanairship/richpush/MessageListResponse;->status:I

    return v0
.end method
