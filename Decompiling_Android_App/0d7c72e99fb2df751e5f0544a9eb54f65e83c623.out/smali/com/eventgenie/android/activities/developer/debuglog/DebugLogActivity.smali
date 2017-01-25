.class public Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;
.super Lcom/eventgenie/android/activities/developer/BaseDebugActivity;
.source "DebugLogActivity.java"


# static fields
.field private static final EMAIL_SUBJECT:Ljava/lang/String; = "GenieConnect Android Tester Report - Debug Log"


# instance fields
.field private mStartButton:Landroid/widget/Button;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/BaseDebugActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mStartButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->sentEmail(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/developer/BaseDebugActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/eventgenie/android/R$layout;->activity_base_debug:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->activity_title_collect_debug_log:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    sget v0, Lcom/eventgenie/android/R$id;->resultBox:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mTextView:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/eventgenie/android/R$id;->buttonStart:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mStartButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->instructions_collect_log:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mStartButton:Landroid/widget/Button;

    sget v1, Lcom/eventgenie/android/R$string;->label_button_collect_log:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public onStartTestClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    new-instance v0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;-><init>(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method
