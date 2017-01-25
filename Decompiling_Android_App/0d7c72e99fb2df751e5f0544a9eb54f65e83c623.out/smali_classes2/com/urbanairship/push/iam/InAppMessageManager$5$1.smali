.class Lcom/urbanairship/push/iam/InAppMessageManager$5$1;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager$5;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager$5;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$5$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 1
    .param p1, "airship"    # Lcom/urbanairship/UAirship;

    .prologue
    .line 653
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->onForeground()V

    .line 654
    return-void
.end method
