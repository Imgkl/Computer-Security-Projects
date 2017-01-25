.class Lcom/julysystems/appx/AppXPopUpDialog;
.super Landroid/app/Dialog;
.source "AppXPopUpDialog.java"


# static fields
.field private static mainRelativeLayout:Landroid/widget/RelativeLayout;


# instance fields
.field private context:Landroid/content/Context;

.field private dialogScroll:Landroid/widget/ScrollView;

.field private lnLayout:Landroid/widget/LinearLayout;

.field private progressRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/julysystems/appx/AppXPopUpDialog;->context:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/julysystems/appx/AppXPopUpDialog;->dialogScroll:Landroid/widget/ScrollView;

    .line 33
    iput-object p1, p0, Lcom/julysystems/appx/AppXPopUpDialog;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private addInlineLoader(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0xf

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 62
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/julysystems/appx/AppXPopUpDialog;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    .line 63
    sget-object v6, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    .local v5, "width":I
    iget-object v6, p0, Lcom/julysystems/appx/AppXPopUpDialog;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    mul-int/lit8 v7, v5, 0x4

    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v8, v5, 0x4

    div-int/lit8 v8, v8, 0x64

    invoke-virtual {v6, v10, v7, v10, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 65
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v1, "progressrelativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    mul-int/lit8 v6, v5, 0x5

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 68
    iget-object v6, p0, Lcom/julysystems/appx/AppXPopUpDialog;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v2, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    mul-int/lit8 v6, v5, 0x5

    div-int/lit8 v6, v6, 0x64

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 73
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "progreesBar":Landroid/widget/ProgressBar;
    const v6, 0x1330238

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setId(I)V

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 77
    iget-object v6, p0, Lcom/julysystems/appx/AppXPopUpDialog;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v3, "textView":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v4, "textViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 82
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getId()I

    move-result v6

    invoke-virtual {v4, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const-string v6, "Loading ... "

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v6, p0, Lcom/julysystems/appx/AppXPopUpDialog;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v6, p0, Lcom/julysystems/appx/AppXPopUpDialog;->lnLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/julysystems/appx/AppXPopUpDialog;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 95
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXPopUpDialog;->requestWindowFeature(I)Z

    .line 41
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPopUpDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/julysystems/appx/AppXPopUpDialog;->mainRelativeLayout:Landroid/widget/RelativeLayout;

    .line 42
    sget-object v1, Lcom/julysystems/appx/AppXPopUpDialog;->mainRelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPopUpDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/julysystems/appx/AppXPopUpDialog;->dialogScroll:Landroid/widget/ScrollView;

    .line 45
    iget-object v1, p0, Lcom/julysystems/appx/AppXPopUpDialog;->dialogScroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    sget-object v1, Lcom/julysystems/appx/AppXPopUpDialog;->mainRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/julysystems/appx/AppXPopUpDialog;->dialogScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPopUpDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/julysystems/appx/AppXPopUpDialog;->lnLayout:Landroid/widget/LinearLayout;

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v0, "lnLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/julysystems/appx/AppXPopUpDialog;->lnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v1, p0, Lcom/julysystems/appx/AppXPopUpDialog;->lnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    iget-object v1, p0, Lcom/julysystems/appx/AppXPopUpDialog;->dialogScroll:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/julysystems/appx/AppXPopUpDialog;->lnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 53
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/julysystems/appx/AppXBaseActivity;

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    check-cast v1, Lcom/julysystems/appx/AppXBaseActivity;

    iget-object v2, p0, Lcom/julysystems/appx/AppXPopUpDialog;->lnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/julysystems/appx/AppXBaseActivity;->isContentView(Landroid/view/View;)V

    .line 55
    :cond_0
    sget-object v1, Lcom/julysystems/appx/AppXPopUpDialog;->mainRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXPopUpDialog;->setContentView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 20
    iget-object v0, p0, Lcom/julysystems/appx/AppXPopUpDialog;->lnLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/julysystems/appx/AppXPopUpDialog;->lnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXPopUpDialog;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/julysystems/appx/AppXPopUpDialog;->addInlineLoader(Landroid/content/Context;)V

    .line 23
    return-void
.end method
