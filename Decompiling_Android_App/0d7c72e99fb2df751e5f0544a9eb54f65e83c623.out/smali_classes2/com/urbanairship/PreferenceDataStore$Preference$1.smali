.class Lcom/urbanairship/PreferenceDataStore$Preference$1;
.super Ljava/lang/Object;
.source "PreferenceDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/PreferenceDataStore$Preference;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore$Preference;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore$Preference$1;->this$1:Lcom/urbanairship/PreferenceDataStore$Preference;

    iput-object p2, p0, Lcom/urbanairship/PreferenceDataStore$Preference$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference$1;->this$1:Lcom/urbanairship/PreferenceDataStore$Preference;

    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore$Preference$1;->val$value:Ljava/lang/String;

    # invokes: Lcom/urbanairship/PreferenceDataStore$Preference;->writeValue(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->access$000(Lcom/urbanairship/PreferenceDataStore$Preference;Ljava/lang/String;)Z

    .line 372
    return-void
.end method
