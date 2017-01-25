.class public Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
.super Ljava/lang/Object;
.source "DownloadAlertDialogUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

.field private final mId:J


# direct methods
.method public constructor <init>(JLandroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "downloadables"    # Landroid/database/Cursor;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mId:J

    .line 63
    iput-object p3, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/eventgenie/android/utils/help/DownloadableHelper;-><init>(JLandroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Lcom/eventgenie/android/utils/help/DownloadableHelper;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mId:J

    return-wide v0
.end method

.method private getUserNotAllowedDialg(Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 10
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 183
    iget-object v3, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v9}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 184
    .local v0, "config":Lcom/genie_connect/android/db/config/AppConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->msg_no_permissions_to_access:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v8, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v0, v7, v8}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v2, "myAlertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 189
    iget-object v3, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$3;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$3;-><init>(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getDownloadAlertDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 68
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->downloadables_download_file:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->downloadables_email_file:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 72
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$1;-><init>(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 117
    .local v0, "alert":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public getOpenAlertDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 121
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->downloadables_open_file:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->downloadables_email_file:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->downloadables_delete_file:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 126
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$2;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils$2;-><init>(Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 150
    .local v0, "alert":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public getProperAlertDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 154
    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 177
    :goto_0
    return-object v4

    .line 157
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v3

    .line 159
    .local v3, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getPermissionGroupId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v2

    .line 161
    .local v2, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v4, v3, v5, v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v1

    .line 165
    .local v1, "canOpen":Z
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v4, v3, v5, v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v0

    .line 171
    .local v0, "canFavourite":Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 172
    :cond_1
    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getUserNotAllowedDialg(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 174
    :cond_2
    iget-object v4, p0, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getOpenAlertDialog()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getDownloadAlertDialog()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0
.end method
