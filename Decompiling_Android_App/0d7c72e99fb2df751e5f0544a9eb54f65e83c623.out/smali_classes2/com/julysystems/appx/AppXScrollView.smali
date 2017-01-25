.class Lcom/julysystems/appx/AppXScrollView;
.super Landroid/widget/ScrollView;
.source "AppXScrollView.java"


# static fields
.field public static anchorTag:Ljava/lang/String;

.field public static prevScrollY:I


# instance fields
.field public linearLayout:Landroid/widget/LinearLayout;

.field public viewElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/julysystems/appx/AppXViewElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/julysystems/appx/AppXScrollView;->prevScrollY:I

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/julysystems/appx/AppXScrollView;->anchorTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXScrollView;->viewElements:Ljava/util/List;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p4, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXScrollView;->viewElements:Ljava/util/List;

    .line 32
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXScrollView;->setBackgroundColor(I)V

    .line 33
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXScrollView;->setFillViewport(Z)V

    .line 34
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXScrollView;->linearLayout:Landroid/widget/LinearLayout;

    .line 37
    iget-object v0, p0, Lcom/julysystems/appx/AppXScrollView;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v0, p0, Lcom/julysystems/appx/AppXScrollView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    iget-object v0, p0, Lcom/julysystems/appx/AppXScrollView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 40
    iget-object v0, p0, Lcom/julysystems/appx/AppXScrollView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 42
    if-eqz p4, :cond_0

    .line 43
    invoke-virtual {p4}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v0

    iput-object p0, v0, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXScrollView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXScrollView;->addView(Landroid/view/View;)V

    .line 45
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    iget-object v1, p0, Lcom/julysystems/appx/AppXScrollView;->viewElements:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/julysystems/appx/AppX;->preloadComponents(Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V

    .line 46
    return-void
.end method
