.class public abstract Lcom/urbanairship/Autopilot;
.super Ljava/lang/Object;
.source "Autopilot.java"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# static fields
.field public static final AUTOPILOT_MANIFEST_KEY:Ljava/lang/String; = "com.urbanairship.autopilot"

.field private static final TAG:Ljava/lang/String; = "Urban Airship Autopilot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized automaticTakeOff(Landroid/app/Application;)V
    .locals 11
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 54
    const-class v8, Lcom/urbanairship/Autopilot;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->isTakingOff()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 62
    .local v3, "classname":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 63
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 64
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "com.urbanairship.autopilot"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 71
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :goto_1
    if-nez v3, :cond_2

    .line 72
    :try_start_2
    const-string v7, "Urban Airship Autopilot"

    const-string v9, "Unable to takeOff automatically"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 54
    .end local v3    # "classname":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 65
    .restart local v3    # "classname":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 66
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v7, "Urban Airship Autopilot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v7, "Urban Airship Autopilot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 79
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :cond_2
    :try_start_4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 88
    .local v1, "autopilotClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/urbanairship/Autopilot;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    .local v5, "instance":Lcom/urbanairship/Autopilot;
    if-nez v5, :cond_3

    .line 101
    :try_start_6
    const-string v7, "Urban Airship Autopilot"

    const-string v9, "Unable to instantiate the defined Autopilot instance. Instance is null."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v1    # "autopilotClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "instance":Lcom/urbanairship/Autopilot;
    :catch_2
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "Urban Airship Autopilot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load the defined Autopilot instance. ClassNotFoundException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "autopilotClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v4

    .line 90
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v7, "Urban Airship Autopilot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to instantiate the defined Autopilot instance. IllegalAccessException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 92
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string v7, "Urban Airship Autopilot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to instantiate the defined Autopilot instance. InstantiationException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 95
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/ClassCastException;
    const-string v7, "Urban Airship Autopilot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to instantiate the defined Autopilot instance. ClassCastException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    .end local v4    # "e":Ljava/lang/ClassCastException;
    .restart local v5    # "instance":Lcom/urbanairship/Autopilot;
    :cond_3
    invoke-virtual {v5, p0}, Lcom/urbanairship/Autopilot;->createAirshipConfigOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v6

    .line 107
    .local v6, "options":Lcom/urbanairship/AirshipConfigOptions;
    invoke-static {}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/urbanairship/UAirship;->isTakingOff()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 108
    :cond_4
    const-string v7, "Urban Airship Autopilot"

    const-string v9, "Airship is flying before autopilot is able to take off. Make sureAutoPilot.onCreateAirshipConfig is not calling takeOff directly."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_5
    invoke-static {p0, v6, v5}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static automaticTakeOff(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    .line 123
    return-void
.end method


# virtual methods
.method public createAirshipConfigOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method
