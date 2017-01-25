.class Lcom/urbanairship/push/iam/view/BannerContent;
.super Ljava/lang/Object;
.source "BannerContent.java"

# interfaces
.implements Lcom/urbanairship/push/iam/view/Banner;


# static fields
.field private static final ACTION_BUTTON_ICON_SIZE_DP:I = 0x20


# instance fields
.field private actionButtonTextAppearance:I

.field private actionButtonViewGroup:Landroid/view/ViewGroup;

.field private actionClickListener:Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;

.field private actionsDividerView:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private dismissButton:Landroid/widget/ImageButton;

.field private dismissClickListener:Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;

.field private messageTextView:Landroid/widget/TextView;

.field private primaryColor:I

.field private secondaryColor:I

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bannerView"    # Landroid/view/ViewGroup;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->context:Landroid/content/Context;

    .line 85
    sget v7, Lcom/urbanairship/R$layout;->ua_iam_content:I

    invoke-static {p1, v7, p2}, Lcom/urbanairship/push/iam/view/BannerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 86
    .local v6, "view":Landroid/view/View;
    sget v7, Lcom/urbanairship/R$id;->alert:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->messageTextView:Landroid/widget/TextView;

    .line 87
    sget v7, Lcom/urbanairship/R$id;->action_divider:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionsDividerView:Landroid/view/View;

    .line 88
    sget v7, Lcom/urbanairship/R$id;->action_buttons:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    .line 89
    sget v7, Lcom/urbanairship/R$id;->close:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->dismissButton:Landroid/widget/ImageButton;

    .line 91
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 92
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionsDividerView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->dismissButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/urbanairship/push/iam/view/BannerContent$1;

    invoke-direct {v8, p0}, Lcom/urbanairship/push/iam/view/BannerContent$1;-><init>(Lcom/urbanairship/push/iam/view/BannerContent;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    if-eqz p3, :cond_2

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget-object v8, Lcom/urbanairship/R$styleable;->BannerView:[I

    sget v9, Lcom/urbanairship/R$style;->InAppMessage_Banner:I

    invoke-virtual {v7, p3, v8, p4, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v7, Lcom/urbanairship/R$styleable;->BannerView_bannerFontPath:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "fontPath":Ljava/lang/String;
    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->typeface:Landroid/graphics/Typeface;

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/urbanairship/R$color;->ua_iam_primary:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 112
    .local v1, "defaultPrimary":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/urbanairship/R$color;->ua_iam_secondary:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 114
    .local v2, "defaultSecondary":I
    sget v7, Lcom/urbanairship/R$styleable;->BannerView_bannerPrimaryColor:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/urbanairship/push/iam/view/BannerContent;->setPrimaryColor(I)V

    .line 115
    sget v7, Lcom/urbanairship/R$styleable;->BannerView_bannerSecondaryColor:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/urbanairship/push/iam/view/BannerContent;->setSecondaryColor(I)V

    .line 117
    sget v7, Lcom/urbanairship/R$styleable;->BannerView_bannerNoDismissButton:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 118
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->dismissButton:Landroid/widget/ImageButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 126
    :cond_1
    :goto_0
    sget v7, Lcom/urbanairship/R$styleable;->BannerView_bannerActionButtonTextAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonTextAppearance:I

    .line 128
    sget v7, Lcom/urbanairship/R$styleable;->BannerView_bannerTextAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 129
    .local v5, "textAppearance":I
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->messageTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v7, v5}, Lcom/urbanairship/push/iam/view/BannerContent;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    .end local v1    # "defaultPrimary":I
    .end local v2    # "defaultSecondary":I
    .end local v4    # "fontPath":Ljava/lang/String;
    .end local v5    # "textAppearance":I
    :cond_2
    return-void

    .line 120
    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    .restart local v1    # "defaultPrimary":I
    .restart local v2    # "defaultSecondary":I
    .restart local v4    # "fontPath":Ljava/lang/String;
    :cond_3
    sget v7, Lcom/urbanairship/R$styleable;->BannerView_bannerDismissButtonDrawable:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 121
    .local v3, "dismissDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 122
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->dismissButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/view/BannerContent;)Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/view/BannerContent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerContent;->dismissClickListener:Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/view/BannerContent;)Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/view/BannerContent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionClickListener:Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;

    return-object v0
.end method

.method private applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "textAppearance"    # I

    .prologue
    .line 243
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 244
    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 249
    const/4 v0, -0x1

    .line 250
    .local v0, "style":I
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 254
    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 256
    if-ltz v0, :cond_3

    .line 257
    iget-object v1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 264
    .end local v0    # "style":I
    :cond_2
    :goto_0
    iget v1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->secondaryColor:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    return-void

    .line 259
    .restart local v0    # "style":I
    :cond_3
    iget-object v1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method


# virtual methods
.method getPrimaryColor()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/urbanairship/push/iam/view/BannerContent;->primaryColor:I

    return v0
.end method

.method public setNotificationActionButtonGroup(Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V
    .locals 12
    .param p1, "group"    # Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 144
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 146
    if-nez p1, :cond_1

    .line 147
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionsDividerView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionsDividerView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 156
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 157
    .local v5, "resources":Landroid/content/res/Resources;
    const/4 v7, 0x1

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v6, v7

    .line 159
    .local v6, "size":I
    invoke-virtual {p1}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;->getNotificationActionButtons()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/notifications/NotificationActionButton;

    .line 160
    .local v0, "actionButton":Lcom/urbanairship/push/notifications/NotificationActionButton;
    sget v7, Lcom/urbanairship/R$layout;->ua_iam_button:I

    iget-object v8, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 162
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getLabel()I

    move-result v7

    if-lez v7, :cond_2

    .line 163
    invoke-virtual {v0}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getLabel()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 166
    :cond_2
    invoke-virtual {v0}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getIcon()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 167
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v10, v10, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    iget v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->secondaryColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    invoke-virtual {v1, v2, v11, v11, v11}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->context:Landroid/content/Context;

    iget v8, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonTextAppearance:I

    invoke-direct {p0, v7, v1, v8}, Lcom/urbanairship/push/iam/view/BannerContent;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 173
    new-instance v7, Lcom/urbanairship/push/iam/view/BannerContent$2;

    invoke-direct {v7, p0, v0}, Lcom/urbanairship/push/iam/view/BannerContent$2;-><init>(Lcom/urbanairship/push/iam/view/BannerContent;Lcom/urbanairship/push/notifications/NotificationActionButton;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOnActionClickListener(Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionClickListener:Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;

    .line 194
    return-void
.end method

.method public setOnDismissClickListener(Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->dismissClickListener:Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;

    .line 189
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->primaryColor:I

    .line 221
    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/urbanairship/push/iam/view/BannerContent;->secondaryColor:I

    .line 200
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionsDividerView:Landroid/view/View;

    iget v8, p0, Lcom/urbanairship/push/iam/view/BannerContent;->secondaryColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 201
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->dismissButton:Landroid/widget/ImageButton;

    iget v8, p0, Lcom/urbanairship/push/iam/view/BannerContent;->secondaryColor:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 202
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->messageTextView:Landroid/widget/TextView;

    iget v8, p0, Lcom/urbanairship/push/iam/view/BannerContent;->secondaryColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 205
    iget-object v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->actionButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 206
    .local v2, "child":Landroid/view/View;
    instance-of v7, v2, Landroid/widget/Button;

    if-eqz v7, :cond_2

    move-object v1, v2

    .line 207
    check-cast v1, Landroid/widget/Button;

    .line 208
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 209
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 210
    iget v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->secondaryColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 213
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v7, p0, Lcom/urbanairship/push/iam/view/BannerContent;->secondaryColor:I

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 204
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "button":Landroid/widget/Button;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerContent;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
