.class Lcom/julysystems/appx/AppXViewContainer;
.super Lcom/julysystems/appx/AppXBaseLinearLayout;
.source "AppXViewContainer.java"

# interfaces
.implements Lcom/julysystems/appx/AppXBackNavigationListner;


# instance fields
.field private animation:Landroid/view/animation/AlphaAnimation;

.field private context:Landroid/content/Context;

.field private disableTouches:Z

.field private mainLayout:Landroid/widget/LinearLayout;

.field private pageActivity:Lcom/julysystems/appx/AppXPageActivity;

.field private pageData:Lcom/julysystems/appx/AppXPageData;

.field private progreesBar:Landroid/widget/ProgressBar;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/julysystems/appx/AppXBaseLinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->mainLayout:Landroid/widget/LinearLayout;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXViewContainer;->disableTouches:Z

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p4, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/julysystems/appx/AppXBaseLinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->mainLayout:Landroid/widget/LinearLayout;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXViewContainer;->disableTouches:Z

    .line 38
    invoke-virtual {p4, p0}, Lcom/julysystems/appx/AppXPageActivity;->addBackNavigationListner(Lcom/julysystems/appx/AppXBackNavigationListner;)V

    .line 39
    iput-object p1, p0, Lcom/julysystems/appx/AppXViewContainer;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/julysystems/appx/AppXViewContainer;->element:Lorg/w3c/dom/Element;

    .line 41
    iput-object p3, p0, Lcom/julysystems/appx/AppXViewContainer;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 42
    iput-object p4, p0, Lcom/julysystems/appx/AppXViewContainer;->pageActivity:Lcom/julysystems/appx/AppXPageActivity;

    .line 43
    invoke-direct {p0, p2}, Lcom/julysystems/appx/AppXViewContainer;->addViewContainer(Lorg/w3c/dom/Element;)V

    .line 44
    return-void
.end method

.method private addViewContainer(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 47
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/julysystems/appx/AppXViewContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->mainLayout:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    iget-object v1, p0, Lcom/julysystems/appx/AppXViewContainer;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/julysystems/appx/AppXViewContainer;->context:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/julysystems/appx/AppXViewContainer;->pageActivity:Lcom/julysystems/appx/AppXPageActivity;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->addComponents(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V

    .line 59
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXViewContainer;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXViewContainer;->addInlineLoader()V

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXViewContainer;->removeView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXViewContainer;->addInlineLoader()V

    goto :goto_0
.end method


# virtual methods
.method protected addInlineLoader()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->animation:Landroid/view/animation/AlphaAnimation;

    .line 86
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->animation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 87
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXViewContainer;->createInlineLoader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    .line 88
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXViewContainer;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    return-void
.end method

.method protected createInlineLoader(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x2

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v0, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010079

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    .line 78
    iget-object v1, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 79
    iget-object v1, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v1, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 81
    iget-object v1, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    return-object v1
.end method

.method protected hideInlineLoader()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXViewContainer;->disableTouches:Z

    .line 98
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXViewContainer;->hideInlineLoader()V

    .line 132
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXViewContainer;->removeOpacity()V

    .line 133
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXViewContainer;->disableTouches:Z

    return v0
.end method

.method public removeOpacity()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXViewContainer;->setAnimation(Landroid/view/animation/Animation;)V

    .line 119
    return-void
.end method

.method public showInlineLoader()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->progreesBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXViewContainer;->disableTouches:Z

    .line 106
    :cond_0
    return-void
.end method

.method public showOpacity()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewContainer;->animation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXViewContainer;->setAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method

.method public updateWithNode(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXViewContainer;->removeAllViews()V

    .line 124
    iput-object p2, p0, Lcom/julysystems/appx/AppXViewContainer;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 125
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXViewContainer;->hideInlineLoader()V

    .line 126
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXViewContainer;->removeOpacity()V

    .line 127
    invoke-direct {p0, p1}, Lcom/julysystems/appx/AppXViewContainer;->addViewContainer(Lorg/w3c/dom/Element;)V

    .line 128
    return-void
.end method
