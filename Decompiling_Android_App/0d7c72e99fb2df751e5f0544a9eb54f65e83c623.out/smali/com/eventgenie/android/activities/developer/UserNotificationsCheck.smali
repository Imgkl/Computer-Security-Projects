.class public Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "UserNotificationsCheck.java"


# static fields
.field private static final BUTTON_LABEL:Ljava/lang/String; = "Go!"

.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field private static final NOTIFICATION_ID:I = 0x3e7


# instance fields
.field private mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    return-void
.end method

.method private static addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V
    .locals 3
    .param p0, "adapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/commonsware/cwac/merge/MergeAdapter;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 407
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 409
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private addSectionNotifications()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createNotifcationClear()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createNotifcationProgressbar()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createNotifcationAlert()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->hasAtleastOneNonNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    const-string v2, "Toasts"

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    .line 42
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 44
    :cond_0
    return-void
.end method

.method private addSectionOther()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createSendToPebble()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createAppXFullScreenView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->hasAtleastOneNonNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    const-string v2, "Other"

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 84
    :cond_0
    return-void
.end method

.method private addSectionPopups()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createPopupOkCancel()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createPopupOk()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createPopupOkWithTitle()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createPopupOkIntent()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createPopupNetworkNeededForValidation()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->hasAtleastOneNonNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    const-string v2, "Popups"

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    .line 56
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 58
    :cond_0
    return-void
.end method

.method private addSectionToasts()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createToastInfoView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createToastSuccessView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createToastFailureView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createToastNoNetwork()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createToastNetworkNeeded()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->hasAtleastOneNonNull(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    const-string v2, "Toasts"

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V

    .line 70
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addAll(Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 72
    :cond_0
    return-void
.end method

.method private static addView(Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "adapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createAppXFullScreenView()Landroid/view/View;
    .locals 5

    .prologue
    .line 345
    const-string v1, "Tag, no namespace"

    .line 347
    .local v1, "hint":Ljava/lang/String;
    const-string v4, "Tag, no namespace"

    invoke-direct {p0, v4}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseEditTextAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 348
    .local v3, "v":Landroid/view/View;
    sget v4, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 349
    .local v0, "button":Landroid/widget/Button;
    sget v4, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 351
    .local v2, "tmpTag":Landroid/text/Editable;
    const-string v4, "Go!"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    new-instance v4, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;

    invoke-direct {v4, p0, v2}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;Landroid/text/Editable;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-object v3
.end method

.method private createNotifcationAlert()Landroid/view/View;
    .locals 4

    .prologue
    .line 103
    const-string v1, "Alert"

    .line 104
    .local v1, "label":Ljava/lang/String;
    const-string v3, "Alert"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$2;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$2;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-object v2
.end method

.method private createNotifcationClear()Landroid/view/View;
    .locals 4

    .prologue
    .line 128
    const-string v1, "Clear Notification"

    .line 129
    .local v1, "label":Ljava/lang/String;
    const-string v3, "Clear Notification"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 131
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$3;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$3;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-object v2
.end method

.method private createNotifcationProgressbar()Landroid/view/View;
    .locals 4

    .prologue
    .line 146
    const-string v1, "Progressbar"

    .line 147
    .local v1, "label":Ljava/lang/String;
    const-string v3, "Progressbar"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 149
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-object v2
.end method

.method private createPopupNetworkNeededForValidation()Landroid/view/View;
    .locals 4

    .prologue
    .line 291
    const-string v1, "Network Needed for Validation"

    .line 292
    .local v1, "label":Ljava/lang/String;
    const-string v3, "Network Needed for Validation"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 293
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 294
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$11;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$11;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-object v2
.end method

.method private createPopupOk()Landroid/view/View;
    .locals 4

    .prologue
    .line 155
    const-string v1, "OK"

    .line 156
    .local v1, "label":Ljava/lang/String;
    const-string v3, "OK"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$4;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$4;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-object v2
.end method

.method private createPopupOkCancel()Landroid/view/View;
    .locals 4

    .prologue
    .line 171
    const-string v1, "OK/Cancel"

    .line 172
    .local v1, "label":Ljava/lang/String;
    const-string v3, "OK/Cancel"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 174
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$5;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$5;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-object v2
.end method

.method private createPopupOkIntent()Landroid/view/View;
    .locals 4

    .prologue
    .line 201
    const-string v1, "OK Intent Dialog"

    .line 202
    .local v1, "label":Ljava/lang/String;
    const-string v3, "OK Intent Dialog"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 203
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 204
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-object v2
.end method

.method private createPopupOkWithTitle()Landroid/view/View;
    .locals 4

    .prologue
    .line 218
    const-string v1, "OK with title"

    .line 219
    .local v1, "label":Ljava/lang/String;
    const-string v3, "OK with title"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 220
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 221
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$7;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$7;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-object v2
.end method

.method private createSendToPebble()Landroid/view/View;
    .locals 4

    .prologue
    .line 87
    const-string v1, "OK"

    .line 88
    .local v1, "label":Ljava/lang/String;
    const-string v3, "OK"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$1;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object v2
.end method

.method private createToastFailureView()Landroid/view/View;
    .locals 6

    .prologue
    .line 234
    const-string v1, "Failure"

    .line 235
    .local v1, "label":Ljava/lang/String;
    const-string v2, "This is a Failure Toast! Something the user did failed!"

    .line 236
    .local v2, "toastMessage":Ljava/lang/String;
    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .line 238
    .local v3, "type":Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;
    const-string v5, "Failure"

    invoke-direct {p0, v5}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 239
    .local v4, "v":Landroid/view/View;
    sget v5, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 240
    .local v0, "button":Landroid/widget/Button;
    const-string v5, "Go!"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    new-instance v5, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$8;

    invoke-direct {v5, p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$8;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    return-object v4
.end method

.method private createToastInfoView()Landroid/view/View;
    .locals 6

    .prologue
    .line 254
    const-string v1, "Info"

    .line 255
    .local v1, "label":Ljava/lang/String;
    const-string v2, "This is an informative Toast! Something happened, but pretty generic..."

    .line 256
    .local v2, "toastMessage":Ljava/lang/String;
    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .line 258
    .local v3, "type":Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;
    const-string v5, "Info"

    invoke-direct {p0, v5}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 259
    .local v4, "v":Landroid/view/View;
    sget v5, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 260
    .local v0, "button":Landroid/widget/Button;
    const-string v5, "Go!"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v5, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$9;

    invoke-direct {v5, p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$9;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    return-object v4
.end method

.method private createToastNetworkNeeded()Landroid/view/View;
    .locals 4

    .prologue
    .line 274
    const-string v1, "Network Needed"

    .line 275
    .local v1, "label":Ljava/lang/String;
    const-string v3, "Network Needed"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 277
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$10;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$10;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-object v2
.end method

.method private createToastNoNetwork()Landroid/view/View;
    .locals 4

    .prologue
    .line 308
    const-string v1, "No Network"

    .line 309
    .local v1, "label":Ljava/lang/String;
    const-string v3, "No Network"

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 310
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 311
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "Go!"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v3, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$12;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$12;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-object v2
.end method

.method private createToastSuccessView()Landroid/view/View;
    .locals 6

    .prologue
    .line 325
    const-string v1, "Success"

    .line 326
    .local v1, "label":Ljava/lang/String;
    const-string v2, "This is a Success Toast! Something the user did succeeded!"

    .line 327
    .local v2, "toastMessage":Ljava/lang/String;
    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .line 329
    .local v3, "type":Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;
    const-string v5, "Success"

    invoke-direct {p0, v5}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 330
    .local v4, "v":Landroid/view/View;
    sget v5, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 331
    .local v0, "button":Landroid/widget/Button;
    const-string v5, "Go!"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    new-instance v5, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$13;

    invoke-direct {v5, p0, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$13;-><init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    return-object v4
.end method

.method private getBaseEditTextAndButtonView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_edittext_and_button:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 377
    return-object v0
.end method

.method private getBaseTextViewAndButtonView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_text_and_button:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    return-object v0
.end method

.method private static hasAtleastOneNonNull(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .line 420
    .local v2, "res":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 421
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 422
    const/4 v2, 0x1

    .line 427
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return v2
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 388
    sget-object v0, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->ENTITY_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v0, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->setContentView(I)V

    .line 389
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v1, "User Interface Check"

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 392
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addSectionToasts()V

    .line 393
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addSectionPopups()V

    .line 394
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addSectionNotifications()V

    .line 395
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->addSectionOther()V

    .line 397
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->mMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 398
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method
