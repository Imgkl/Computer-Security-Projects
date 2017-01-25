.class Lcom/urbanairship/push/iam/InAppMessageManager$5$3;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager$5;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager$5;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager$5;

    iput-object p2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 2
    .param p1, "airship"    # Lcom/urbanairship/UAirship;

    .prologue
    .line 681
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->onActivityResumed(Landroid/app/Activity;)V

    .line 682
    return-void
.end method
