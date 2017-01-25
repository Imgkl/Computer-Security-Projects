.class Lcom/julysystems/appx/AppXPageView;
.super Landroid/widget/FrameLayout;
.source "AppXPageView.java"


# static fields
.field public static componentsTime:Ljava/lang/String;

.field public static focusedViewId:I

.field public static i:I

.field public static navText:Ljava/lang/String;

.field public static tabNav:Z


# instance fields
.field public adLinearLayout:Landroid/widget/LinearLayout;

.field public jScrollView:Lcom/julysystems/appx/AppXScrollView;

.field public linearLayout:Landroid/widget/LinearLayout;

.field public subNavigationCenter:Lcom/julysystems/appx/AppXNavigation;

.field public subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

.field public subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

.field public tabKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tabMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public topNavigation:Lcom/julysystems/appx/AppXTopNavigation;

.field public webViewLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field public webViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/julysystems/appx/AppXWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXPageView;->navText:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/julysystems/appx/AppXPageView;->focusedViewId:I

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/julysystems/appx/AppXPageView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    .line 25
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationCenter:Lcom/julysystems/appx/AppXNavigation;

    .line 26
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageView;->webViewLayouts:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->webViewList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXPageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXPageView;->setBackgroundColor(I)V

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    .line 43
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageView;->adLinearLayout:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->adLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->adLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXPageView;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXPageView;->addView(Landroid/view/View;)V

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/julysystems/appx/AppXPageView;->tabNav:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/julysystems/appx/AppXPageData;)V
    .locals 4
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    .line 25
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationCenter:Lcom/julysystems/appx/AppXNavigation;

    .line 26
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageView;->webViewLayouts:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->webViewList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXPageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXPageView;->setBackgroundColor(I)V

    .line 60
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageView;->adLinearLayout:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->adLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->adLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 68
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXPageView;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->adLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXPageView;->addView(Landroid/view/View;)V

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/julysystems/appx/AppXPageView;->tabNav:Z

    .line 71
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    .line 104
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationCenter:Lcom/julysystems/appx/AppXNavigation;

    .line 105
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    .line 106
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    .line 107
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->topNavigation:Lcom/julysystems/appx/AppXTopNavigation;

    .line 108
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->webViewLayouts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->webViewLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->webViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->webViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageView;->removeAllViews()V

    .line 113
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    .line 114
    iput-object v1, p0, Lcom/julysystems/appx/AppXPageView;->topNavigation:Lcom/julysystems/appx/AppXTopNavigation;

    .line 115
    return-void
.end method

.method public hideSubNavigation()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 94
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setVisibility(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationCenter:Lcom/julysystems/appx/AppXNavigation;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationCenter:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setVisibility(I)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setVisibility(I)V

    .line 100
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, -0x1

    .line 86
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 87
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    if-eqz v0, :cond_0

    sget v0, Lcom/julysystems/appx/AppXScrollView;->prevScrollY:I

    if-eq v0, v3, :cond_0

    .line 88
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    const/4 v1, 0x0

    sget v2, Lcom/julysystems/appx/AppXScrollView;->prevScrollY:I

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXScrollView;->scrollTo(II)V

    .line 89
    sput v3, Lcom/julysystems/appx/AppXScrollView;->prevScrollY:I

    .line 91
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/julysystems/appx/AppXPageView;->setMeasuredDimension(II)V

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
