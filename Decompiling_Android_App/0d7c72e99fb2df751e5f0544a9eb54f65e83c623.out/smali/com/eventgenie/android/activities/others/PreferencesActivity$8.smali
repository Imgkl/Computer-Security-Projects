.class Lcom/eventgenie/android/activities/others/PreferencesActivity$8;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$8;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 399
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$8;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    iget-object v5, v5, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v6, "enable_sounds"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 402
    .local v3, "enabled":Z
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/urbanairship/push/PushManager;->setSoundEnabled(Z)V

    .line 404
    if-eqz v3, :cond_1

    .line 406
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 407
    .local v0, "alert":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 408
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 410
    .local v4, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$8;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-virtual {v5}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 411
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$8;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 413
    .local v1, "audioManager":Landroid/media/AudioManager;
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 415
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 416
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 417
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 429
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v4    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_0
    :goto_0
    const-string v5, "^ PREFS: Sound ENABLED"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 433
    .end local v0    # "alert":Landroid/net/Uri;
    :goto_1
    return v7

    .line 419
    .restart local v0    # "alert":Landroid/net/Uri;
    .restart local v4    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 421
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v2

    .line 426
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 431
    .end local v0    # "alert":Landroid/net/Uri;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_1
    const-string v5, "^ PREFS: Sound DISABLED"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
