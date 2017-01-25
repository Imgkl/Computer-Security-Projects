.class public interface abstract Lcom/eventgenie/android/activities/base/GenieActivity;
.super Ljava/lang/Object;
.source "GenieActivity.java"


# static fields
.field public static final ACTIVITY_TYPE_EG_ABS_ACTIVITY:I = 0x5

.field public static final ACTIVITY_TYPE_EG_ACTIVITY:I = 0x0

.field public static final ACTIVITY_TYPE_EG_FRAGMENT_ACTIVITY:I = 0x1

.field public static final ACTIVITY_TYPE_EG_LIST_ACTIVITY:I = 0x2

.field public static final ACTIVITY_TYPE_EG_TAB_ACTIVITY:I = 0x3

.field public static final ACTIVITY_TYPE_EG_VIEWPAGER_ACTIVITY:I = 0x4


# virtual methods
.method public abstract close(Landroid/database/Cursor;)V
.end method

.method public abstract getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
.end method

.method public abstract getConfig()Lcom/genie_connect/android/db/config/AppConfig;
.end method

.method public abstract getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;
.end method

.method public abstract getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;
.end method

.method public abstract getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;
.end method

.method public abstract getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
.end method

.method public abstract getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
.end method

.method public abstract getRestServer()Ljava/lang/String;
.end method

.method public abstract getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
.end method

.method public abstract getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
.end method

.method public abstract goHome()V
.end method

.method public abstract hideAdvert()V
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isInsideTab()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract requery(Landroid/database/Cursor;)V
.end method

.method public abstract showIndicator(ZZ)V
.end method
