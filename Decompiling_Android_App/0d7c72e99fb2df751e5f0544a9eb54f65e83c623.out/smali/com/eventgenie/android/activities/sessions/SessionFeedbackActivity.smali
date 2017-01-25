.class public Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "SessionFeedbackActivity.java"


# static fields
.field private static final LEFT:I = 0x0

.field private static final MAX_PAGE:I = 0x2

.field private static final RIGHT:I = 0x1

.field public static final SESSION_TITLE_EXTRA:Ljava/lang/String; = "session_title"


# instance fields
.field private comments:Landroid/widget/EditText;

.field private currentPage:I

.field private expectations:Landroid/widget/ListView;

.field private flipper:Landroid/widget/ViewFlipper;

.field private mItemId:J

.field private next:Landroid/widget/Button;

.field private pageSelector:Landroid/widget/RadioGroup;

.field private previous:Landroid/widget/Button;

.field private ratingValues:[Ljava/lang/String;

.field private ratings:Landroid/widget/ListView;

.field private sessionTitle:Ljava/lang/String;

.field private yesNo:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->updateUI()V

    return-void
.end method

.method private static animateInFrom(I)Landroid/view/animation/Animation;
    .locals 9
    .param p0, "fromDirection"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "inFrom":Landroid/view/animation/Animation;
    packed-switch p0, :pswitch_data_0

    .line 235
    :goto_0
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 236
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    return-object v0

    .line 220
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "inFrom":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 225
    .restart local v0    # "inFrom":Landroid/view/animation/Animation;
    goto :goto_0

    .line 227
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "inFrom":Landroid/view/animation/Animation;
    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "inFrom":Landroid/view/animation/Animation;
    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static animateOutTo(I)Landroid/view/animation/Animation;
    .locals 9
    .param p0, "toDirection"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "outTo":Landroid/view/animation/Animation;
    packed-switch p0, :pswitch_data_0

    .line 261
    :goto_0
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 262
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 263
    return-object v0

    .line 246
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outTo":Landroid/view/animation/Animation;
    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 251
    .restart local v0    # "outTo":Landroid/view/animation/Animation;
    goto :goto_0

    .line 253
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outTo":Landroid/view/animation/Animation;
    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "outTo":Landroid/view/animation/Animation;
    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private populateQuestions()V
    .locals 6

    .prologue
    const v5, 0x109000f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    sget v0, Lcom/eventgenie/android/R$id;->rating_list:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratings:Landroid/widget/ListView;

    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratings:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratingValues:[Ljava/lang/String;

    invoke-direct {v1, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratings:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 184
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratings:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 186
    sget v0, Lcom/eventgenie/android/R$id;->expected_list:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->expectations:Landroid/widget/ListView;

    .line 187
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->expectations:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->yesNo:[Ljava/lang/String;

    invoke-direct {v1, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->expectations:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 191
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->expectations:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 193
    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 197
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->currentPage:I

    .line 199
    iget v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->currentPage:I

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->previous:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    :goto_0
    iget v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->currentPage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 205
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->next:Landroid/widget/Button;

    sget v2, Lcom/eventgenie/android/R$string;->feedback_submit:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 210
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->pageSelector:Landroid/widget/RadioGroup;

    iget v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->currentPage:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 211
    .local v0, "rb":Landroid/widget/RadioButton;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 212
    return-void

    .line 202
    .end local v0    # "rb":Landroid/widget/RadioButton;
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->previous:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->next:Landroid/widget/Button;

    sget v2, Lcom/eventgenie/android/R$string;->feedback_next:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public nextOnClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 139
    iget v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->currentPage:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 140
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-static {v8}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->animateInFrom(I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-static {v9}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->animateOutTo(I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showNext()V

    .line 143
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->updateUI()V

    .line 175
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/eventgenie/android/R$string;->feedback_session_title_format:I

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "body":Ljava/lang/String;
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->comments:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "com":Ljava/lang/String;
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratings:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    if-eq v5, v10, :cond_1

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->feedback_rate_format:I

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratingValues:[Ljava/lang/String;

    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratings:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_1
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->expectations:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    if-eq v5, v10, :cond_2

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->feedback_expected_format:I

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->yesNo:[Ljava/lang/String;

    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->expectations:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    :cond_2
    if-eqz v2, :cond_3

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->feedback_comments:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->comments:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " (App: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "appSuffix":Ljava/lang/String;
    const-string v5, "sessions"

    iget-wide v6, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->mItemId:J

    invoke-static {p0, v5, v6, v7}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyFeedbackSent(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 166
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "message/rfc822"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v5, "android.intent.extra.EMAIL"

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getFeedbackEmail()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v5, "android.intent.extra.SUBJECT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/eventgenie/android/R$string;->feedback_session_subject_format:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->sessionTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    sget v5, Lcom/eventgenie/android/R$string;->share_send_via:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->startActivityCarefully(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget v5, Lcom/eventgenie/android/R$layout;->feedback:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->feedback_session_title_format:I

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    sget v5, Lcom/eventgenie/android/R$id;->feedback_prompt:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, "prompt":Landroid/widget/TextView;
    sget v5, Lcom/eventgenie/android/R$id;->feedback_rate:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    .local v3, "rate":Landroid/widget/TextView;
    sget v5, Lcom/eventgenie/android/R$id;->feedback_expected:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "expected":Landroid/widget/TextView;
    sget v5, Lcom/eventgenie/android/R$string;->feedback_prompt_format:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget v5, Lcom/eventgenie/android/R$string;->feedback_rate_format:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget v5, Lcom/eventgenie/android/R$string;->feedback_expected_format:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "session_title"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->sessionTitle:Ljava/lang/String;

    .line 102
    const-string v5, "entity_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->mItemId:J

    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$array;->feeback_ratings:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->ratingValues:[Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$array;->yes_no:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->yesNo:[Ljava/lang/String;

    .line 107
    sget v5, Lcom/eventgenie/android/R$id;->flipper:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 108
    sget v5, Lcom/eventgenie/android/R$id;->page_selector:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->pageSelector:Landroid/widget/RadioGroup;

    .line 109
    sget v5, Lcom/eventgenie/android/R$id;->prev:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->previous:Landroid/widget/Button;

    .line 110
    sget v5, Lcom/eventgenie/android/R$id;->next:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->next:Landroid/widget/Button;

    .line 111
    sget v5, Lcom/eventgenie/android/R$id;->comments:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->comments:Landroid/widget/EditText;

    .line 113
    iput v8, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->currentPage:I

    .line 115
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->pageSelector:Landroid/widget/RadioGroup;

    new-instance v6, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;-><init>(Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 127
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->populateQuestions()V

    .line 128
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->updateUI()V

    .line 129
    return-void
.end method

.method public previousOnClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->animateInFrom(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->animateOutTo(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 134
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 135
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->updateUI()V

    .line 136
    return-void
.end method
