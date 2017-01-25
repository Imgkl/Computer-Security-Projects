.class Lcom/julysystems/appx/AppXTopNavigation$1;
.super Ljava/lang/Object;
.source "AppXTopNavigation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXTopNavigation;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXTopNavigation;

.field private final synthetic val$linkLeft:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXTopNavigation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    iput-object p2, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->val$linkLeft:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 66
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # getter for: Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/julysystems/appx/AppXTopNavigation;->access$0(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x4b

    const/16 v4, 0x96

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    sget-object v2, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v3, "tableftsel"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 68
    .local v0, "tableftselId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # getter for: Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/julysystems/appx/AppXTopNavigation;->access$0(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # getter for: Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/julysystems/appx/AppXTopNavigation;->access$1(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    sget-object v2, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v3, "tabright"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 71
    .local v1, "tabrightId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # getter for: Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/julysystems/appx/AppXTopNavigation;->access$1(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # invokes: Lcom/julysystems/appx/AppXTopNavigation;->setSubNavVisibility(I)V
    invoke-static {v2, v5}, Lcom/julysystems/appx/AppXTopNavigation;->access$2(Lcom/julysystems/appx/AppXTopNavigation;I)V

    .line 75
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->val$linkLeft:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$1;->val$linkLeft:Ljava/lang/String;

    invoke-static {v2}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method
