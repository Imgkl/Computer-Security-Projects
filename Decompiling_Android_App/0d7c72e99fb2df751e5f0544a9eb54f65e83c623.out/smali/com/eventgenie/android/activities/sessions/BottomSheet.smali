.class public Lcom/eventgenie/android/activities/sessions/BottomSheet;
.super Ljava/lang/Object;
.source "BottomSheet.java"


# instance fields
.field private mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

.field private final mAttendSessionButton:Landroid/widget/LinearLayout;

.field private mAttendSessionLabel:Ljava/lang/String;

.field private mBookmarSessionLabel:Ljava/lang/String;

.field private final mBookmarkSessionButton:Landroid/widget/LinearLayout;

.field private final mBottomSheetRootLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mRemoveAttendSessionLabel:Ljava/lang/String;

.field private mRemoveBookmarSessionLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/db/config/AppConfig;Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "bottomSheetLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 67
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->prepareStringsFromConfigs()V

    .line 72
    iput-object p2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/eventgenie/android/activities/sessions/BottomSheet$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/sessions/BottomSheet$1;-><init>(Lcom/eventgenie/android/activities/sessions/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/eventgenie/android/R$id;->bottom_sheet_attend_session_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAttendSessionButton:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/eventgenie/android/R$id;->bottom_sheet_bookmark_session_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBookmarkSessionButton:Landroid/widget/LinearLayout;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/sessions/BottomSheet;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/BottomSheet;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private collapse(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/LinearLayout;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 164
    .local v0, "finalHeight":I
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->slideAnimator(Landroid/widget/LinearLayout;II)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 166
    .local v1, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/eventgenie/android/activities/sessions/BottomSheet$2;

    invoke-direct {v2, p0, p1}, Lcom/eventgenie/android/activities/sessions/BottomSheet$2;-><init>(Lcom/eventgenie/android/activities/sessions/BottomSheet;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    return-void
.end method

.method private expand(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 146
    .local v2, "widthSpec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 147
    .local v0, "heightSpec":I
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 150
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, p1, v4, v3}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->slideAnimator(Landroid/widget/LinearLayout;II)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 152
    .local v1, "mAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    return-void
.end method

.method private prepareStringsFromConfigs()V
    .locals 6

    .prologue
    .line 208
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->BOOKMARK_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "bookmarkSessionLabel":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->REMOVE_BOOKMARK_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "removeBookmarSessionLabel":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->ATTEND_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "attendSessionLabel":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->REMOVE_ATTEND_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "removeAttendSessionLabel":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBookmarSessionLabel:Ljava/lang/String;

    .line 219
    :goto_0
    invoke-static {v3}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iput-object v3, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mRemoveBookmarSessionLabel:Ljava/lang/String;

    .line 225
    :goto_1
    invoke-static {v0}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAttendSessionLabel:Ljava/lang/String;

    .line 231
    :goto_2
    invoke-static {v2}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    iput-object v2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mRemoveAttendSessionLabel:Ljava/lang/String;

    .line 237
    :goto_3
    return-void

    .line 216
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->bottom_sheet_bookmark_session_true:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBookmarSessionLabel:Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->bottom_sheet_bookmark_session_false:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mRemoveBookmarSessionLabel:Ljava/lang/String;

    goto :goto_1

    .line 228
    :cond_2
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->bottom_sheet_attend_session_true:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAttendSessionLabel:Ljava/lang/String;

    goto :goto_2

    .line 234
    :cond_3
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->bottom_sheet_attend_session_false:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mRemoveAttendSessionLabel:Ljava/lang/String;

    goto :goto_3
.end method

.method private slideAnimator(Landroid/widget/LinearLayout;II)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 187
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 190
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/eventgenie/android/activities/sessions/BottomSheet$3;

    invoke-direct {v1, p0, p1}, Lcom/eventgenie/android/activities/sessions/BottomSheet$3;-><init>(Lcom/eventgenie/android/activities/sessions/BottomSheet;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    return-object v0
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->collapse(Landroid/widget/LinearLayout;)V

    .line 134
    return-void
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->expand(Landroid/widget/LinearLayout;)V

    .line 127
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttendSessionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAttendSessionButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public setBookmarkActionAvailable(Z)V
    .locals 2
    .param p1, "favouriteActionAvailable"    # Z

    .prologue
    .line 284
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBookmarkSessionButton:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    return-void

    .line 284
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setBookmarkSessionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBookmarkSessionButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public setBookmarked(Z)V
    .locals 3
    .param p1, "isBookmarked"    # Z

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/eventgenie/android/R$id;->bottom_sheet_bookmark_session_label:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    .local v0, "attendSessionLabel":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBookmarSessionLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :goto_0
    return-void

    .line 264
    .end local v0    # "attendSessionLabel":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/eventgenie/android/R$id;->bottom_sheet_bookmark_session_label:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    .restart local v0    # "attendSessionLabel":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mRemoveBookmarSessionLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setFavourite(Z)V
    .locals 3
    .param p1, "isFavourite"    # Z

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/eventgenie/android/R$id;->bottom_sheet_attend_session_label:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    .local v0, "attendSessionLabel":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAttendSessionLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    return-void

    .line 249
    .end local v0    # "attendSessionLabel":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/eventgenie/android/R$id;->bottom_sheet_attend_session_label:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 250
    .restart local v0    # "attendSessionLabel":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mRemoveAttendSessionLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setFavouriteActionAvailable(Z)V
    .locals 2
    .param p1, "favouriteActionAvailable"    # Z

    .prologue
    .line 275
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet;->mAttendSessionButton:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    return-void

    .line 275
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
