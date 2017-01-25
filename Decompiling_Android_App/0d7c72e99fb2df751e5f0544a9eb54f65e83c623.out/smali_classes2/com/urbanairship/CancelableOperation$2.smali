.class Lcom/urbanairship/CancelableOperation$2;
.super Ljava/lang/Object;
.source "CancelableOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/CancelableOperation;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/CancelableOperation;


# direct methods
.method constructor <init>(Lcom/urbanairship/CancelableOperation;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/urbanairship/CancelableOperation$2;->this$0:Lcom/urbanairship/CancelableOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation$2;->this$0:Lcom/urbanairship/CancelableOperation;

    invoke-virtual {v0}, Lcom/urbanairship/CancelableOperation;->onCancel()V

    .line 83
    return-void
.end method
