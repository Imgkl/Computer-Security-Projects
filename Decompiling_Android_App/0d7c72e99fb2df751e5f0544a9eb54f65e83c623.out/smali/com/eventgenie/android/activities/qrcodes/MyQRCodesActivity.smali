.class public Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "MyQRCodesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;
    }
.end annotation


# static fields
.field public static final HIDE_ACTIONBAR_EXTRA:Ljava/lang/String; = "hide_actionbar"


# instance fields
.field private mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mHideActionBar:Z

.field private mLongClickDialog:Landroid/app/AlertDialog;

.field private mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mScanBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mHideActionBar:Z

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mLongClickDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;Luk/co/alt236/easycursor/EasyCursor;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;
    .param p1, "x1"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mScanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->openQRCode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->updateUI()V

    return-void
.end method

.method private openQRCode(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v2, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 118
    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "code"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "qrCode":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 121
    const-class v2, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    const-string v2, "extra_barcode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 125
    :cond_0
    return-void
.end method

.method private showOnLongClickDialog(JI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "pos"    # I

    .prologue
    .line 128
    const-string/jumbo v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 129
    .local v2, "vibe":Landroid/os/Vibrator;
    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 130
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$string;->delete:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    sget v4, Lcom/eventgenie/android/R$string;->open:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 131
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/eventgenie/android/R$string;->select:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 133
    new-instance v3, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$1;-><init>(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;JI)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mLongClickDialog:Landroid/app/AlertDialog;

    .line 159
    iget-object v3, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mLongClickDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 164
    sget v0, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_qr_codes:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->setEmptyListText(I)V

    .line 165
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mScanBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 173
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 178
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mScanBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lcom/eventgenie/android/R$layout;->activity_myqrcodes:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->setContentView(I)V

    .line 73
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mHideActionBar:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setVisibility(Z)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 81
    sget v0, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_qr_codes:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->setEmptyListText(I)V

    .line 82
    sget v0, Lcom/eventgenie/android/R$id;->scan:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mScanBtn:Landroid/widget/Button;

    .line 83
    new-instance v0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;-><init>(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)V

    new-array v1, v3, [Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyQRCodes()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->QR_SCANNER:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->openQRCode(I)V

    .line 89
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p4, p5, p3}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->showOnLongClickDialog(JI)V

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onQRScannerClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    const-class v0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->finish()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->requery(Landroid/database/Cursor;)V

    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mScanBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mScanBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScan(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 182
    return-void
.end method
