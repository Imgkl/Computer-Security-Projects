.class public Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;
.super Lcom/eventgenie/android/activities/base/GenieAbcActivity;
.source "ActivityStreamPostActivity.java"


# static fields
.field public static final ENTITY_EXTRA:Ljava/lang/String; = "ENTITY_EXTRA"


# instance fields
.field private ACTION_CROP:I

.field public doingPost:Z

.field private fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

.field private photo:Ljava/io/File;

.field public postUrlRetrieved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;-><init>()V

    .line 45
    const/16 v0, 0xc9

    iput v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->ACTION_CROP:I

    return-void
.end method

.method private dispatchCropPictureIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "inputFilePath"    # Ljava/lang/String;
    .param p2, "inputFileUri"    # Landroid/net/Uri;
    .param p3, "outputFilePath"    # Ljava/lang/String;

    .prologue
    .line 165
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 166
    const-string v1, "^ dispatchCropPictureIntent(). File path and Uri are null"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/ImageEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INPUT_FILE_PATH_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "INPUT_FILE_URI_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const-string v1, "OUTPUT_FILE_PATH_KEY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "MAX_OUTPUT_SIZE_KEY"

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    iget v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->ACTION_CROP:I

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private getFromMediaUriPfd(Landroid/net/Uri;)Ljava/io/File;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 136
    if-nez p1, :cond_1

    move-object v8, v9

    .line 161
    :cond_0
    :goto_0
    return-object v8

    .line 138
    :cond_1
    const/4 v2, 0x0

    .line 139
    .local v2, "input":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 141
    .local v4, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "r"

    invoke-virtual {v10, p1, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 142
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 143
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v2    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_1
    const-string v10, "png"

    invoke-static {p0, v10}, Lcom/eventgenie/android/utils/help/BitmapUtils;->generateTemporaryImageFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 146
    .local v8, "tempFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .local v5, "output":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 149
    .local v7, "read":I
    const/16 v10, 0x1000

    :try_start_2
    new-array v0, v10, [B

    .line 150
    .local v0, "bytes":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4

    .line 151
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 155
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 158
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "read":I
    .end local v8    # "tempFile":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 159
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_4
    move-object v8, v9

    .line 161
    goto :goto_0

    .line 158
    .end local v2    # "input":Ljava/io/FileInputStream;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "bytes":[B
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "read":I
    .restart local v8    # "tempFile":Ljava/io/File;
    :cond_4
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 159
    :cond_5
    :goto_5
    if-eqz v5, :cond_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    goto :goto_0

    .line 158
    .end local v0    # "bytes":[B
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "read":I
    .end local v8    # "tempFile":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 159
    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_7
    :goto_8
    throw v9

    .line 158
    .end local v2    # "input":Ljava/io/FileInputStream;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "bytes":[B
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "read":I
    .restart local v8    # "tempFile":Ljava/io/File;
    :catch_2
    move-exception v9

    goto :goto_5

    .end local v0    # "bytes":[B
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "read":I
    .end local v8    # "tempFile":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    goto :goto_3

    .line 159
    :catch_4
    move-exception v10

    goto :goto_4

    .line 158
    :catch_5
    move-exception v10

    goto :goto_7

    .line 159
    :catch_6
    move-exception v10

    goto :goto_8

    .line 158
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v2    # "input":Ljava/io/FileInputStream;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    .restart local v8    # "tempFile":Ljava/io/File;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_6

    .line 155
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "read":I
    .end local v8    # "tempFile":Ljava/io/File;
    :catch_7
    move-exception v10

    goto :goto_2

    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_8
    move-exception v10

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method protected doActionAfterGettingPermissions()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_camera_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_camera_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_camera_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_camera_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x7d

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getRequiredMainPermission()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getRequiredMainPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "android.permission.CAMERA"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 53
    const/16 v0, 0x67

    if-ne p1, v0, :cond_5

    .line 54
    if-eqz p3, :cond_6

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 64
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "imageFilePath":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 72
    const-string v0, "png"

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/help/BitmapUtils;->generateTemporaryImageFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->photo:Ljava/io/File;

    .line 74
    if-eqz v10, :cond_2

    .line 75
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->photo:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v10, v0, v2}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->dispatchCropPictureIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 90
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ActivityStreamPostActivity normal data. Picture: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v10    # "imageFilePath":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 107
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_2
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 110
    .local v6, "clipData":Landroid/content/ClipData;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v6, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->addToPhotoGallery(Ljava/lang/Object;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ActivityStreamPostActivity clip data. Picture: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 77
    .end local v6    # "clipData":Landroid/content/ClipData;
    .end local v9    # "i":I
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "imageFilePath":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->photo:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->dispatchCropPictureIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v10    # "imageFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 83
    .restart local v10    # "imageFilePath":Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_4

    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->addToPhotoGallery(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 97
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "imageFilePath":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 100
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getFromMediaUriPfd(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v11

    .line 101
    .local v11, "rawFile":Ljava/io/File;
    const-string v0, "png"

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/help/BitmapUtils;->generateTemporaryImageFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->photo:Ljava/io/File;

    .line 102
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->photo:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->dispatchCropPictureIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    .line 86
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "rawFile":Ljava/io/File;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "imageFilePath":Ljava/lang/String;
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->addToPhotoGallery(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 117
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "imageFilePath":Ljava/lang/String;
    :cond_5
    const/16 v0, 0x65

    if-ne p1, v0, :cond_7

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ActivityStreamPostActivity took picture: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    iget-object v2, v2, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->output:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 119
    const-string v0, "png"

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/help/BitmapUtils;->generateTemporaryImageFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->photo:Ljava/io/File;

    .line 120
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->photo:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->dispatchCropPictureIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 133
    :cond_6
    :goto_4
    return-void

    .line 123
    :cond_7
    iget v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->ACTION_CROP:I

    if-ne p1, v0, :cond_8

    .line 124
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->photo:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->addToPhotoGallery(Ljava/lang/Object;)V

    goto :goto_4

    .line 126
    :cond_8
    const/16 v0, 0x66

    if-ne p1, v0, :cond_6

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/eventgenie/android/container/CursorEntityWrapper;

    .line 129
    .local v12, "wrapper":Lcom/eventgenie/android/container/CursorEntityWrapper;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ActivityStreamPostActivity select entity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Lcom/eventgenie/android/container/CursorEntityWrapper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0, v12}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->addEntityToGallery(Lcom/eventgenie/android/container/CursorEntityWrapper;)V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 180
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->requestWindowFeature(I)Z

    .line 182
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->doCheckPermissionsOnResume(Z)V

    .line 183
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    sget v3, Lcom/eventgenie/android/R$layout;->frame_layout_container:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->setContentView(I)V

    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v3, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-direct {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    .line 187
    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$id;->container:I

    iget-object v5, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 191
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    invoke-virtual {v3, p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 192
    .local v0, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getNavBarColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getTitleBarColour()I

    move-result v2

    .line 193
    .local v2, "titleColour":I
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->action_post:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 195
    .local v1, "titleC":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->action_post:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$menu;->activity_stream_post:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteSession(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->onDeleteSession(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 220
    sget v0, Lcom/eventgenie/android/R$id;->action_stream_post:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->postUrlRetrieved:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->doingPost:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
