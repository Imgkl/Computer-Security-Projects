.class public Lcom/github/johnpersano/supertoasts/SuperCardToast;
.super Ljava/lang/Object;
.source "SuperCardToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;
    }
.end annotation


# static fields
.field private static final BUNDLE_TAG:Ljava/lang/String; = "0x532e432e542e"

.field private static final ERROR_ACTIVITYNULL:Ljava/lang/String; = " - You cannot pass a null Activity as a parameter."

.field private static final ERROR_CONTAINERNULL:Ljava/lang/String; = " - You must have a LinearLayout with the id of card_container in your layout!"

.field private static final ERROR_NOTBUTTONTYPE:Ljava/lang/String; = " is only compatible with BUTTON type SuperCardToasts."

.field private static final ERROR_NOTPROGRESSHORIZONTALTYPE:Ljava/lang/String; = " is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

.field private static final ERROR_VIEWCONTAINERNULL:Ljava/lang/String; = " - Either the View or Container was null when trying to dismiss."

.field private static final MANAGER_TAG:Ljava/lang/String; = "SuperCardToast Manager"

.field private static final TAG:Ljava/lang/String; = "SuperCardToast"

.field private static final WARNING_PREHONEYCOMB:Ljava/lang/String; = "Swipe to dismiss was enabled but the SDK version is pre-Honeycomb"


# instance fields
.field private isProgressIndeterminate:Z

.field private mActivity:Landroid/app/Activity;

.field private mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field private mBackground:I

.field private mButton:Landroid/widget/Button;

.field private mButtonIcon:I

.field private mButtonListener:Landroid/view/View$OnClickListener;

.field private mButtonTypefaceStyle:I

.field private mDividerColor:I

.field private mDividerView:Landroid/view/View;

.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private final mHideImmediateRunnable:Ljava/lang/Runnable;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHideWithAnimationRunnable:Ljava/lang/Runnable;

.field private mIcon:I

.field private mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

.field private final mInvalidateRunnable:Ljava/lang/Runnable;

.field private mIsIndeterminate:Z

.field private mIsSwipeDismissible:Z

.field private mIsTouchDismissible:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

.field private mOnClickWrapperTag:Ljava/lang/String;

.field private mOnDismissWrapper:Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

.field private mOnDismissWrapperTag:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mToastView:Landroid/view/View;

.field private mToken:Landroid/os/Parcelable;

.field private mTouchDismissListener:Landroid/view/View$OnTouchListener;

.field private mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

.field private mTypeface:I

.field private mViewGroup:Landroid/view/ViewGroup;

.field private showImmediate:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 79
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDuration:I

    .line 81
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_gray:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mBackground:I

    .line 82
    iput v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTypeface:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 84
    sget v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 85
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerColor:I

    .line 95
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1529
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1543
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1557
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1571
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1970
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1997
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 109
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 116
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 118
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 121
    sget v0, Lcom/github/johnpersano/supertoasts/R$id;->card_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 124
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You must have a LinearLayout with the id of card_container in your layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 139
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;Lcom/github/johnpersano/supertoasts/util/Wrappers;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "referenceHolder"    # Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;
    .param p3, "wrappers"    # Lcom/github/johnpersano/supertoasts/util/Wrappers;
    .param p4, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 1885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v4, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 79
    const/16 v4, 0x7d0

    iput v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDuration:I

    .line 81
    sget v4, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_gray:I

    iput v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mBackground:I

    .line 82
    const/4 v4, 0x0

    iput v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTypeface:I

    .line 83
    iput v6, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 84
    sget v4, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 85
    const v4, -0xbbbbbc

    iput v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerColor:I

    .line 95
    sget-object v4, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1529
    new-instance v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;

    invoke-direct {v4, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1543
    new-instance v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;

    invoke-direct {v4, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1557
    new-instance v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;

    invoke-direct {v4, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1571
    new-instance v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;

    invoke-direct {v4, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1970
    new-instance v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;

    invoke-direct {v4, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1997
    new-instance v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;

    invoke-direct {v4, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 1889
    iget-object v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v5, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v4, v5, :cond_1

    .line 1891
    new-instance v3, Lcom/github/johnpersano/supertoasts/SuperCardToast;

    sget-object v4, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    invoke-direct {v3, p1, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperToast$Type;)V

    .line 1892
    .local v3, "superCardToast":Lcom/github/johnpersano/supertoasts/SuperCardToast;
    iget-object v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setButtonText(Ljava/lang/CharSequence;)V

    .line 1893
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextSize:F

    invoke-direct {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setButtonTextSizeFloat(F)V

    .line 1894
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextColor:I

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setButtonTextColor(I)V

    .line 1895
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonIcon:I

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setButtonIcon(I)V

    .line 1896
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonDivider:I

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setDividerColor(I)V

    .line 1897
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTypefaceStyle:I

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setButtonTypefaceStyle(I)V

    .line 1899
    if-eqz p3, :cond_4

    .line 1901
    invoke-virtual {p3}, Lcom/github/johnpersano/supertoasts/util/Wrappers;->getOnClickWrappers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .line 1903
    .local v1, "onClickWrapper":Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1905
    iget-object v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    invoke-virtual {v3, v1, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setOnClickWrapper(Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1912
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "onClickWrapper":Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    .end local v3    # "superCardToast":Lcom/github/johnpersano/supertoasts/SuperCardToast;
    :cond_1
    iget-object v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v5, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v4, v5, :cond_3

    .line 1967
    :cond_2
    :goto_1
    return-void

    .line 1918
    :cond_3
    iget-object v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v5, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v4, v5, :cond_2

    .line 1926
    new-instance v3, Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {v3, p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;)V

    .line 1930
    .restart local v3    # "superCardToast":Lcom/github/johnpersano/supertoasts/SuperCardToast;
    :cond_4
    if-eqz p3, :cond_6

    .line 1932
    invoke-virtual {p3}, Lcom/github/johnpersano/supertoasts/util/Wrappers;->getOnDismissWrappers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    .line 1934
    .local v2, "onDismissListenerWrapper":Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;
    invoke-virtual {v2}, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1936
    invoke-virtual {v3, v2}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setOnDismissWrapper(Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;)V

    goto :goto_2

    .line 1943
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "onDismissListenerWrapper":Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;
    :cond_6
    iget-object v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V

    .line 1944
    iget-object v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setText(Ljava/lang/CharSequence;)V

    .line 1945
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTypefaceStyle:I

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setTypefaceStyle(I)V

    .line 1946
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mDuration:I

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setDuration(I)V

    .line 1947
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTextColor:I

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setTextColor(I)V

    .line 1948
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mTextSize:F

    invoke-direct {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setTextSizeFloat(F)V

    .line 1949
    iget-boolean v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsIndeterminate:Z

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setIndeterminate(Z)V

    .line 1950
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    iget-object v5, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v3, v4, v5}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setIcon(ILcom/github/johnpersano/supertoasts/SuperToast$IconPosition;)V

    .line 1951
    iget v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mBackground:I

    invoke-virtual {v3, v4}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setBackground(I)V

    .line 1954
    iget-boolean v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsTouchDismissible:Z

    if-eqz v4, :cond_8

    .line 1956
    invoke-virtual {v3, v6}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setTouchToDismiss(Z)V

    .line 1964
    :cond_7
    :goto_3
    invoke-virtual {v3, v6}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setShowImmediate(Z)V

    .line 1965
    invoke-virtual {v3}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->show()V

    goto :goto_1

    .line 1958
    :cond_8
    iget-boolean v4, p2, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;->mIsSwipeDismissible:Z

    if-eqz v4, :cond_7

    .line 1960
    invoke-virtual {v3, v6}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setSwipeToDismiss(Z)V

    goto :goto_3
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperToast$Type;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 79
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDuration:I

    .line 81
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_gray:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mBackground:I

    .line 82
    iput v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTypeface:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 84
    sget v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 85
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerColor:I

    .line 95
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1529
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1543
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1557
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1571
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1970
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1997
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 193
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 200
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 202
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 205
    sget v0, Lcom/github/johnpersano/supertoasts/R$id;->card_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 208
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You must have a LinearLayout with the id of card_container in your layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast_button:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    .line 222
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerView:Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 255
    return-void

    .line 226
    :cond_2
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast_progresscircle:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 234
    :cond_3
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast_progresshorizontal:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperToast$Type;Lcom/github/johnpersano/supertoasts/util/Style;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/github/johnpersano/supertoasts/SuperToast$Type;
    .param p3, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 79
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDuration:I

    .line 81
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_gray:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mBackground:I

    .line 82
    iput v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTypeface:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 84
    sget v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 85
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerColor:I

    .line 95
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1529
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1543
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1557
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1571
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1970
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1997
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 267
    if-nez p1, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 274
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 276
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 279
    sget v0, Lcom/github/johnpersano/supertoasts/R$id;->card_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 282
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You must have a LinearLayout with the id of card_container in your layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast_button:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 293
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    .line 296
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerView:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    .line 326
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 329
    invoke-direct {p0, p3}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 331
    return-void

    .line 300
    :cond_2
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast_progresscircle:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 308
    :cond_3
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast_progresshorizontal:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/util/Style;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 79
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDuration:I

    .line 81
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_gray:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mBackground:I

    .line 82
    iput v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTypeface:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 84
    sget v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 85
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerColor:I

    .line 95
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1529
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$6;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1543
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1557
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$8;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1571
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1970
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1997
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 150
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 157
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 159
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 162
    sget v0, Lcom/github/johnpersano/supertoasts/R$id;->card_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 165
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You must have a LinearLayout with the id of card_container in your layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supercardtoast:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 180
    invoke-direct {p0, p2}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getToken()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getDismissListenerTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->dismissWithLayoutAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToken:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperCardToast;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getOnClickWrapperTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cancelAllSuperCardToasts()V
    .locals 1

    .prologue
    .line 1789
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->cancelAllSuperActivityToasts()V

    .line 1791
    return-void
.end method

.method private checkForKitKatBackgrounds(I)I
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 620
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_black:I

    if-ne p1, v0, :cond_1

    .line 622
    sget p1, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_black:I

    .line 654
    .end local p1    # "background":I
    :cond_0
    :goto_0
    return p1

    .line 624
    .restart local p1    # "background":I
    :cond_1
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_blue:I

    if-ne p1, v0, :cond_2

    .line 626
    sget p1, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_blue:I

    goto :goto_0

    .line 628
    :cond_2
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_gray:I

    if-ne p1, v0, :cond_3

    .line 630
    sget p1, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_gray:I

    goto :goto_0

    .line 632
    :cond_3
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_green:I

    if-ne p1, v0, :cond_4

    .line 634
    sget p1, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_green:I

    goto :goto_0

    .line 636
    :cond_4
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_orange:I

    if-ne p1, v0, :cond_5

    .line 638
    sget p1, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_orange:I

    goto :goto_0

    .line 640
    :cond_5
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_purple:I

    if-ne p1, v0, :cond_6

    .line 642
    sget p1, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_purple:I

    goto :goto_0

    .line 644
    :cond_6
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_red:I

    if-ne p1, v0, :cond_7

    .line 646
    sget p1, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_red:I

    goto :goto_0

    .line 648
    :cond_7
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->background_kitkat_white:I

    if-ne p1, v0, :cond_0

    .line 650
    sget p1, Lcom/github/johnpersano/supertoasts/R$drawable;->background_standard_white:I

    goto :goto_0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/github/johnpersano/supertoasts/SuperCardToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I

    .prologue
    .line 1724
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;)V

    .line 1725
    .local v0, "superCardToast":Lcom/github/johnpersano/supertoasts/SuperCardToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setDuration(I)V

    .line 1728
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;ILcom/github/johnpersano/supertoasts/SuperToast$Animations;)Lcom/github/johnpersano/supertoasts/SuperCardToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "animations"    # Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .prologue
    .line 1748
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;)V

    .line 1749
    .local v0, "superCardToast":Lcom/github/johnpersano/supertoasts/SuperCardToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setText(Ljava/lang/CharSequence;)V

    .line 1750
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setDuration(I)V

    .line 1751
    invoke-virtual {v0, p3}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V

    .line 1753
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;ILcom/github/johnpersano/supertoasts/util/Style;)Lcom/github/johnpersano/supertoasts/SuperCardToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    .line 1773
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;)V

    .line 1774
    .local v0, "superCardToast":Lcom/github/johnpersano/supertoasts/SuperCardToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setText(Ljava/lang/CharSequence;)V

    .line 1775
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setDuration(I)V

    .line 1776
    invoke-direct {v0, p3}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 1778
    return-object v0
.end method

.method private dismissWithAnimation()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getDismissAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 945
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/github/johnpersano/supertoasts/SuperCardToast$5;

    invoke-direct {v1, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$5;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 982
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 988
    :cond_0
    return-void
.end method

.method private dismissWithLayoutAnimation()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 881
    iget-object v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 883
    iget-object v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 886
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 888
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10e0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 891
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/github/johnpersano/supertoasts/SuperCardToast$3;

    invoke-direct {v3, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$3;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 903
    new-instance v3, Lcom/github/johnpersano/supertoasts/SuperCardToast$4;

    invoke-direct {v3, p0, v1}, Lcom/github/johnpersano/supertoasts/SuperCardToast$4;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 929
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 937
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "originalHeight":I
    :goto_0
    return-void

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->dismissImmediately()V

    goto :goto_0
.end method

.method private getDismissAnimation()Landroid/view/animation/Animation;
    .locals 13

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FLYIN:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_0

    .line 1652
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1656
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1658
    .local v11, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1659
    .local v12, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1660
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1661
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1662
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1703
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :goto_0
    return-object v12

    .line 1666
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    invoke-virtual {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->SCALE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_1

    .line 1668
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1671
    .local v1, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1673
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1674
    .restart local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1675
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1676
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1677
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 1681
    .end local v1    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_1
    invoke-virtual {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->POPUP:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_2

    .line 1683
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x3dcccccd    # 0.1f

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1687
    .restart local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1689
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1690
    .restart local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1691
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1692
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1693
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 1699
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1700
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1701
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v11, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v12, v11

    .line 1703
    goto/16 :goto_0
.end method

.method private getDismissListenerTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnDismissWrapperTag:Ljava/lang/String;

    return-object v0
.end method

.method private getOnClickWrapperTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnClickWrapperTag:Ljava/lang/String;

    return-object v0
.end method

.method private getShowAnimation()Landroid/view/animation/Animation;
    .locals 14

    .prologue
    .line 1588
    invoke-virtual {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FLYIN:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_0

    .line 1590
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1594
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1596
    .local v11, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1597
    .local v13, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1598
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1599
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1600
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1641
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :goto_0
    return-object v13

    .line 1604
    :cond_0
    invoke-virtual {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->SCALE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_1

    .line 1606
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1609
    .local v1, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1611
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1612
    .restart local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1613
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1614
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1615
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 1619
    .end local v1    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_1
    invoke-virtual {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->POPUP:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_2

    .line 1621
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1625
    .restart local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1627
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1628
    .restart local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1629
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1630
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1631
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 1637
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v12, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1638
    .local v12, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1639
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v13, v12

    .line 1641
    goto/16 :goto_0
.end method

.method private getToken()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToken:Landroid/os/Parcelable;

    return-object v0
.end method

.method public static onRestoreState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1826
    if-nez p0, :cond_1

    .line 1847
    :cond_0
    return-void

    .line 1831
    :cond_1
    const-string v6, "0x532e432e542e"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 1833
    .local v5, "savedArray":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 1835
    .local v1, "i":I
    if-eqz v5, :cond_0

    .line 1837
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1839
    .local v4, "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v1, v1, 0x1

    .line 1841
    new-instance v6, Lcom/github/johnpersano/supertoasts/SuperCardToast;

    check-cast v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    .end local v4    # "parcelable":Landroid/os/Parcelable;
    const/4 v7, 0x0

    invoke-direct {v6, p1, v4, v7, v1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;Lcom/github/johnpersano/supertoasts/util/Wrappers;I)V

    .line 1837
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static onRestoreState(Landroid/os/Bundle;Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/util/Wrappers;)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wrappers"    # Lcom/github/johnpersano/supertoasts/util/Wrappers;

    .prologue
    .line 1859
    if-nez p0, :cond_1

    .line 1880
    :cond_0
    return-void

    .line 1864
    :cond_1
    const-string v6, "0x532e432e542e"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 1866
    .local v5, "savedArray":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 1868
    .local v1, "i":I
    if-eqz v5, :cond_0

    .line 1870
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1872
    .local v4, "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v1, v1, 0x1

    .line 1874
    new-instance v6, Lcom/github/johnpersano/supertoasts/SuperCardToast;

    check-cast v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    .end local v4    # "parcelable":Landroid/os/Parcelable;
    invoke-direct {v6, p1, v4, p2, v1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;Lcom/github/johnpersano/supertoasts/util/Wrappers;I)V

    .line 1870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static onSaveState(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1800
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->getList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    .line 1803
    .local v1, "list":[Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->getList()Ljava/util/LinkedList;

    move-result-object v2

    .line 1806
    .local v2, "lister":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/github/johnpersano/supertoasts/SuperCardToast;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1808
    new-instance v4, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {v4, v3}, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    aput-object v4, v1, v0

    .line 1806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1812
    :cond_0
    const-string v3, "0x532e432e542e"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1814
    invoke-static {}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->cancelAllSuperCardToasts()V

    .line 1816
    return-void
.end method

.method private setButtonTextSizeFloat(F)V
    .locals 2
    .param p1, "buttonTextSize"    # F

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1304
    return-void
.end method

.method private setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V
    .locals 2
    .param p1, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    .line 1512
    iget-object v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->animations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V

    .line 1513
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->typefaceStyle:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setTypefaceStyle(I)V

    .line 1514
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setTextColor(I)V

    .line 1515
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setBackground(I)V

    .line 1517
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v0, v1, :cond_0

    .line 1519
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setDividerColor(I)V

    .line 1520
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->buttonTextColor:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->setButtonTextColor(I)V

    .line 1524
    :cond_0
    return-void
.end method

.method private setTextSizeFloat(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 483
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 485
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 834
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->remove(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    .line 836
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->dismissWithAnimation()V

    .line 838
    return-void
.end method

.method public dismissImmediately()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 845
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->remove(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    .line 847
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 850
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 851
    iput-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 859
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnDismissWrapper:Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnDismissWrapper:Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    invoke-virtual {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->onDismiss(Landroid/view/View;)V

    .line 865
    :cond_1
    iput-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 873
    :goto_0
    return-void

    .line 869
    :cond_2
    const-string v0, "SuperCardToast"

    const-string v1, " - Either the View or Container was null when trying to dismiss."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    return-object v0
.end method

.method public getBackgroundResource()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mBackground:I

    return v0
.end method

.method public getButtonIcon()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonIcon:I

    return v0
.end method

.method public getButtonText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1189
    :goto_0
    return-object v0

    .line 1187
    :cond_0
    const-string v0, "SuperCardToast"

    const-string v1, "getButtonText() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v0, ""

    goto :goto_0
.end method

.method public getButtonTextColor()I
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v0

    .line 1269
    :goto_0
    return v0

    .line 1267
    :cond_0
    const-string v0, "SuperCardToast"

    const-string v1, "getButtonTextColor() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTextSize()F
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    .line 1322
    :goto_0
    return v0

    .line 1320
    :cond_0
    const-string v0, "SuperCardToast"

    const-string v1, "getButtonTextSize() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTypefaceStyle()I
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerColor:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDuration:I

    return v0
.end method

.method public getIconPosition()Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIcon:I

    return v0
.end method

.method public getMaxProgress()I
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 1410
    :goto_0
    return v0

    .line 1408
    :cond_0
    const-string v0, "SuperCardToast"

    const-string v1, "getMaxProgress() is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    goto :goto_0
.end method

.method protected getOnDismissWrapper()Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnDismissWrapper:Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1366
    :goto_0
    return v0

    .line 1364
    :cond_0
    const-string v0, "SuperCardToast"

    const-string v1, "ProgressBar is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressIndeterminate()Z
    .locals 1

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->isProgressIndeterminate:Z

    return v0
.end method

.method public getShowImmediate()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->showImmediate:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getType()Lcom/github/johnpersano/supertoasts/SuperToast$Type;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTypeface:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIsIndeterminate:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwipeDismissible()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIsSwipeDismissible:Z

    return v0
.end method

.method public isTouchDismissible()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIsTouchDismissible:Z

    return v0
.end method

.method public setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V
    .locals 0
    .param p1, "animations"    # Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 680
    return-void
.end method

.method public setBackground(I)V
    .locals 2
    .param p1, "background"    # I

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->checkForKitKatBackgrounds(I)I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mBackground:I

    .line 609
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 611
    return-void
.end method

.method public setButtonIcon(I)V
    .locals 3
    .param p1, "buttonIcon"    # I

    .prologue
    const/4 v2, 0x0

    .line 1058
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1060
    const-string v0, "SuperCardToast"

    const-string v1, "setButtonIcon() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_0
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 1066
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1073
    :cond_1
    return-void
.end method

.method public setButtonIcon(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "buttonIcon"    # I
    .param p2, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1084
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1086
    const-string v0, "SuperCardToast"

    const-string v1, "setButtonIcon() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_0
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 1092
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1097
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    :cond_1
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1161
    const-string v0, "SuperCardToast"

    const-string v1, "setButtonText() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    :cond_1
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 2
    .param p1, "buttonTextColor"    # I

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1241
    const-string v0, "SuperCardToast"

    const-string v1, "setButtonTextColor() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1251
    :cond_1
    return-void
.end method

.method public setButtonTextSize(I)V
    .locals 2
    .param p1, "buttonTextSize"    # I

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1285
    const-string v0, "SuperCardToast"

    const-string v1, "setButtonTextSize() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1295
    :cond_1
    return-void
.end method

.method public setButtonTypefaceStyle(I)V
    .locals 2
    .param p1, "typefaceStyle"    # I

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1205
    const-string v0, "SuperCardToast"

    const-string v1, "setButtonTypefaceStyle() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1211
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 1213
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1217
    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2
    .param p1, "dividerColor"    # I

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1125
    const-string v0, "SuperCardToast"

    const-string v1, "setDivider() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_0
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerColor:I

    .line 1131
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1137
    :cond_1
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 505
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDuration:I

    .line 507
    return-void
.end method

.method public setIcon(ILcom/github/johnpersano/supertoasts/SuperToast$IconPosition;)V
    .locals 3
    .param p1, "icon"    # I
    .param p2, "iconPosition"    # Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .prologue
    const/4 v2, 0x0

    .line 550
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIcon:I

    .line 551
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 553
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 563
    :cond_2
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 568
    :cond_3
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->TOP:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIsIndeterminate:Z

    .line 529
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 2
    .param p1, "maxProgress"    # I

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1382
    const-string v0, "SuperCardToast"

    const-string v1, "setMaxProgress() is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1392
    :cond_1
    return-void
.end method

.method public setOnClickWrapper(Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;)V
    .locals 2
    .param p1, "onClickWrapper"    # Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .prologue
    .line 998
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1000
    const-string v0, "SuperCardToast"

    const-string v1, "setOnClickListenerWrapper() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .line 1005
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnClickWrapperTag:Ljava/lang/String;

    .line 1007
    return-void
.end method

.method public setOnClickWrapper(Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "onClickWrapper"    # Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    .param p2, "token"    # Landroid/os/Parcelable;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1020
    const-string v0, "SuperCardToast"

    const-string v1, "setOnClickListenerWrapper() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_0
    invoke-virtual {p1, p2}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->setToken(Landroid/os/Parcelable;)V

    .line 1026
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToken:Landroid/os/Parcelable;

    .line 1027
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .line 1028
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnClickWrapperTag:Ljava/lang/String;

    .line 1030
    return-void
.end method

.method public setOnDismissWrapper(Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;)V
    .locals 1
    .param p1, "onDismissWrapper"    # Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnDismissWrapper:Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    .line 807
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnDismissWrapperTag:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1338
    const-string v0, "SuperCardToast"

    const-string v1, "setProgress() is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1348
    :cond_1
    return-void
.end method

.method public setProgressIndeterminate(Z)V
    .locals 2
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1426
    const-string v0, "SuperCardToast"

    const-string v1, "setProgressIndeterminate() is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_0
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->isProgressIndeterminate:Z

    .line 1432
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1438
    :cond_1
    return-void
.end method

.method public setShowImmediate(Z)V
    .locals 0
    .param p1, "showImmediate"    # Z

    .prologue
    .line 700
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->showImmediate:Z

    .line 701
    return-void
.end method

.method public setSwipeToDismiss(Z)V
    .locals 3
    .param p1, "swipeDismiss"    # Z

    .prologue
    .line 753
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIsSwipeDismissible:Z

    .line 755
    if-eqz p1, :cond_1

    .line 757
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    .line 759
    new-instance v0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    new-instance v2, Lcom/github/johnpersano/supertoasts/SuperCardToast$2;

    invoke-direct {v2, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$2;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    invoke-direct {v0, v1, v2}, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;-><init>(Landroid/view/View;Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$OnDismissCallback;)V

    .line 771
    .local v0, "swipeDismissListener":Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 785
    .end local v0    # "swipeDismissListener":Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;
    :goto_0
    return-void

    .line 775
    :cond_0
    const-string v1, "SuperCardToast"

    const-string v2, "Swipe to dismiss was enabled but the SDK version is pre-Honeycomb"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 476
    return-void
.end method

.method public setTouchToDismiss(Z)V
    .locals 2
    .param p1, "touchDismiss"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIsTouchDismissible:Z

    .line 723
    if-eqz p1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 733
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setTypefaceStyle(I)V
    .locals 2
    .param p1, "typeface"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mTypeface:I

    .line 430
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 432
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 339
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperCardToast;->add(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    .line 341
    iget-boolean v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mIsIndeterminate:Z

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    .line 344
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 350
    iget-boolean v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->showImmediate:Z

    if-nez v1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->getShowAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 355
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/github/johnpersano/supertoasts/SuperCardToast$1;

    invoke-direct {v1, p0}, Lcom/github/johnpersano/supertoasts/SuperCardToast$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 382
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 386
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method
