.class public Lcom/urbanairship/push/iam/view/BannerCardView;
.super Landroid/support/v7/widget/CardView;
.source "BannerCardView.java"

# interfaces
.implements Lcom/urbanairship/push/iam/view/Banner;


# instance fields
.field private content:Lcom/urbanairship/push/iam/view/BannerContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    sget v1, Lcom/urbanairship/R$attr;->inAppMessageBannerStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/urbanairship/push/iam/view/BannerCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    sget v0, Lcom/urbanairship/R$attr;->inAppMessageBannerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/push/iam/view/BannerCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v4, Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-direct {v4, p1, p0, p2, p3}, Lcom/urbanairship/push/iam/view/BannerContent;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->content:Lcom/urbanairship/push/iam/view/BannerContent;

    .line 74
    if-eqz p2, :cond_4

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/urbanairship/R$styleable;->CardView:[I

    sget v6, Lcom/urbanairship/R$style;->InAppMessage_Banner:I

    invoke-virtual {v4, p2, v5, p3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/urbanairship/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lcom/urbanairship/R$styleable;->CardView_optCardBackgroundColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    sget v4, Lcom/urbanairship/R$styleable;->CardView_optCardBackgroundColor:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 79
    .local v1, "color":I
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/view/BannerCardView;->setCardBackgroundColor(I)V

    .line 82
    .end local v1    # "color":I
    :cond_0
    sget v4, Lcom/urbanairship/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Lcom/urbanairship/R$styleable;->CardView_optCardElevation:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    sget v4, Lcom/urbanairship/R$styleable;->CardView_optCardElevation:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 84
    .local v2, "elevation":F
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/BannerCardView;->getMaxCardElevation()F

    move-result v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 85
    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/view/BannerCardView;->setMaxCardElevation(F)V

    .line 87
    :cond_1
    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/view/BannerCardView;->setCardElevation(F)V

    .line 90
    .end local v2    # "elevation":F
    :cond_2
    sget v4, Lcom/urbanairship/R$styleable;->CardView_cardCornerRadius:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_3

    sget v4, Lcom/urbanairship/R$styleable;->CardView_optCardCornerRadius:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    sget v4, Lcom/urbanairship/R$styleable;->CardView_optCardCornerRadius:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 92
    .local v3, "radius":F
    invoke-virtual {p0, v3}, Lcom/urbanairship/push/iam/view/BannerCardView;->setRadius(F)V

    .line 95
    .end local v3    # "radius":F
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_4
    iget-object v4, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->content:Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-virtual {v4}, Lcom/urbanairship/push/iam/view/BannerContent;->getPrimaryColor()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/urbanairship/push/iam/view/BannerCardView;->setCardBackgroundColor(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public setNotificationActionButtonGroup(Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->content:Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/BannerContent;->setNotificationActionButtonGroup(Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V

    .line 119
    return-void
.end method

.method public setOnActionClickListener(Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->content:Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/BannerContent;->setOnActionClickListener(Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;)V

    .line 109
    return-void
.end method

.method public setOnDismissClickListener(Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->content:Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/BannerContent;->setOnDismissClickListener(Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;)V

    .line 104
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/iam/view/BannerCardView;->setCardBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->content:Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/BannerContent;->setPrimaryColor(I)V

    .line 125
    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->content:Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/BannerContent;->setSecondaryColor(I)V

    .line 130
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerCardView;->content:Lcom/urbanairship/push/iam/view/BannerContent;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/view/BannerContent;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method
