.class Lcom/julysystems/appx/AppXMenu$1;
.super Ljava/lang/Object;
.source "AppXMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXMenu;-><init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXMenu;

.field private final synthetic val$topLevelMenu:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXMenu;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXMenu$1;->this$0:Lcom/julysystems/appx/AppXMenu;

    iput-object p2, p0, Lcom/julysystems/appx/AppXMenu$1;->val$topLevelMenu:Landroid/widget/LinearLayout;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/julysystems/appx/AppXMenu$1;->val$topLevelMenu:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view1":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 85
    .local v1, "visibility":I
    if-nez v1, :cond_1

    .line 86
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .end local v1    # "visibility":I
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v1    # "visibility":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
