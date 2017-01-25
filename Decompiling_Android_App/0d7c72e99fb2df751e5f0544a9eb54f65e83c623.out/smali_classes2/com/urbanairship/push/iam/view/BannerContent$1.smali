.class Lcom/urbanairship/push/iam/view/BannerContent$1;
.super Ljava/lang/Object;
.source "BannerContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/view/BannerContent;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/view/BannerContent;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/view/BannerContent;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/BannerContent$1;->this$0:Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerContent$1;->this$0:Lcom/urbanairship/push/iam/view/BannerContent;

    # getter for: Lcom/urbanairship/push/iam/view/BannerContent;->dismissClickListener:Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/BannerContent;->access$000(Lcom/urbanairship/push/iam/view/BannerContent;)Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerContent$1;->this$0:Lcom/urbanairship/push/iam/view/BannerContent;

    # getter for: Lcom/urbanairship/push/iam/view/BannerContent;->dismissClickListener:Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/BannerContent;->access$000(Lcom/urbanairship/push/iam/view/BannerContent;)Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;->onDismissClick()V

    .line 100
    :cond_0
    return-void
.end method
