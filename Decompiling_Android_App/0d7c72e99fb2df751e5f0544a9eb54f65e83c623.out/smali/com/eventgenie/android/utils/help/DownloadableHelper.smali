.class public Lcom/eventgenie/android/utils/help/DownloadableHelper;
.super Ljava/lang/Object;
.source "DownloadableHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mDownloadUrl:Ljava/lang/String;

.field private mDownloadables:Landroid/database/Cursor;

.field private mFileMimeType:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mFileType:Ljava/lang/String;

.field private final mId:J

.field private final mIsValid:Z

.field private mPermissionGroupId:Ljava/lang/Long;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "downloadables"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p4, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDownloadables:Landroid/database/Cursor;

    .line 80
    iput-object p3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p3}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 82
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 83
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mId:J

    .line 84
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadable(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 86
    .local v0, "asset":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iput-object v2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileMimeType:Ljava/lang/String;

    .line 88
    const-string v1, "fileType"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileType:Ljava/lang/String;

    .line 89
    const-string v1, "downloadUrl"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDownloadUrl:Ljava/lang/String;

    .line 90
    const-string v1, "permissionGroup"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mPermissionGroupId:Ljava/lang/Long;

    .line 91
    const-string v1, "fileName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mIsValid:Z

    .line 105
    :goto_0
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 107
    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mIsValid:Z

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWNLOADS HELPER Invalid downloadable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void

    .line 96
    :cond_1
    iput-boolean v4, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mIsValid:Z

    goto :goto_0

    .line 99
    :cond_2
    iput-object v2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDownloadUrl:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileType:Ljava/lang/String;

    .line 102
    iput-boolean v4, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mIsValid:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/eventgenie/android/utils/help/DownloadableHelper;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/DownloadableHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mFileName"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "mFileName"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/MyEvent/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "filePath":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DOWNLOADS HELPER: Filename: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' Path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public static requery(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/genie_connect/android/db/DbHelper;->requery(Landroid/database/Cursor;)V

    .line 216
    return-void
.end method

.method private retrieveMimeType(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 249
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 250
    .local v1, "myMime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileMimeType:Ljava/lang/String;

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileMimeType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public deleteFile()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 186
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    const-string v3, "downloadables"

    iget-wide v4, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mId:J

    iget-object v6, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v7, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v9}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    invoke-virtual/range {v1 .. v8}, Lcom/genie_connect/android/db/access/Udm;->favorite(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    move-result-object v0

    .line 193
    .local v0, "res":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 196
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/eventgenie/android/R$string;->message_downloadable_deleted:I

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 201
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDownloadables:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->requery(Landroid/database/Cursor;)V

    .line 202
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    :cond_0
    move v1, v9

    goto :goto_0
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    :cond_0
    return-void
.end method

.method public getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    return-object v0
.end method

.method public getDb()Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadables()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDownloadables:Landroid/database/Cursor;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroupId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mPermissionGroupId:Ljava/lang/Long;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mIsValid:Z

    return v0
.end method

.method public openFile()Z
    .locals 6

    .prologue
    .line 158
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "viewFile":Landroid/content/Intent;
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileMimeType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 162
    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->retrieveMimeType(Landroid/net/Uri;)V

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileMimeType:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileMimeType:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ DOWNLOADS HELPER: Mimetype is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 175
    :try_start_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 168
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$string;->downloadables_no_file_handler:I

    sget-object v5, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_1
.end method

.method public retrieveFile(Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;)V
    .locals 1
    .param p1, "downloadAssetTask"    # Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->showProgressDialog()V

    .line 210
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 212
    :cond_0
    return-void
.end method

.method public sendEmail()Z
    .locals 6

    .prologue
    .line 125
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 127
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "sendFile":Landroid/content/Intent;
    const-string/jumbo v3, "text/html"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->fileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 144
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->message_downloadable_send_via_mail:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 141
    :cond_0
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$string;->downloadables_no_mail_client:I

    sget-object v5, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 152
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 234
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/eventgenie/android/utils/help/DownloadableHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/eventgenie/android/utils/help/DownloadableHelper$1;-><init>(Lcom/eventgenie/android/utils/help/DownloadableHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 219
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 220
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/eventgenie/android/R$string;->downloadables_progress_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 223
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 224
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/DownloadableHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 225
    return-void
.end method
