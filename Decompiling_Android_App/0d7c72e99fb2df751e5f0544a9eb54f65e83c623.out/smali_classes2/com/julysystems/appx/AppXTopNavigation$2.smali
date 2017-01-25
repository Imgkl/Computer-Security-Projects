.class Lcom/julysystems/appx/AppXTopNavigation$2;
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

.field private final synthetic val$linkRight:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXTopNavigation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    iput-object p2, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->val$linkRight:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # getter for: Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/julysystems/appx/AppXTopNavigation;->access$1(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x4b

    const/16 v5, 0x96

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    sget-object v2, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v3, "tabrightsel"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 115
    .local v1, "tabrightselId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # getter for: Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/julysystems/appx/AppXTopNavigation;->access$1(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 116
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # getter for: Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/julysystems/appx/AppXTopNavigation;->access$0(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    sget-object v2, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v3, "tableft"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 118
    .local v0, "tableftId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    # getter for: Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/julysystems/appx/AppXTopNavigation;->access$0(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->this$0:Lcom/julysystems/appx/AppXTopNavigation;

    const/4 v3, 0x2

    # invokes: Lcom/julysystems/appx/AppXTopNavigation;->setSubNavVisibility(I)V
    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXTopNavigation;->access$2(Lcom/julysystems/appx/AppXTopNavigation;I)V

    .line 122
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->val$linkRight:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/julysystems/appx/AppXTopNavigation$2;->val$linkRight:Ljava/lang/String;

    invoke-static {v2}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method
