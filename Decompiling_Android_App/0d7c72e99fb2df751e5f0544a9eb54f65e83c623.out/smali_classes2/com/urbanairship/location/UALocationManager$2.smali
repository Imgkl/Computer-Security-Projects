.class Lcom/urbanairship/location/UALocationManager$2;
.super Ljava/lang/Object;
.source "UALocationManager.java"

# interfaces
.implements Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/UALocationManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/UALocationManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$2;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$2;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$200(Lcom/urbanairship/location/UALocationManager;)V

    .line 121
    return-void
.end method
