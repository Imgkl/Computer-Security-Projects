.class public Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;
.super Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;
.source "BaseMultiEntityAdapter.java"


# instance fields
.field private final mFeatures:Lcom/genie_connect/android/db/config/FeatureConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;JLcom/genie_connect/android/db/config/AppConfig;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "data"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "alphaIndexColumn"    # Ljava/lang/String;
    .param p7, "namespace"    # J
    .param p9, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 46
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    .line 47
    invoke-virtual/range {p9 .. p9}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;->mFeatures:Lcom/genie_connect/android/db/config/FeatureConfig;

    .line 48
    return-void
.end method


# virtual methods
.method protected getModifier(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/GmListModifier;
    .locals 1
    .param p1, "entityType"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;->mFeatures:Lcom/genie_connect/android/db/config/FeatureConfig;

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getListModifierForEntity(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v0

    return-object v0
.end method
