.class public Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;
.super Lcom/eventgenie/android/fragments/factory/FragmentFactory;
.source "EntityDetailsFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntityId:Ljava/lang/Long;

.field private mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entityId"    # Ljava/lang/Long;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/factory/FragmentFactory;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mEntityId:Ljava/lang/Long;

    .line 72
    iput-object p3, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 73
    iput-object p1, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private getInfoFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v1, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    new-instance v0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;-><init>()V

    goto :goto_0

    .line 124
    :pswitch_1
    new-instance v0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;-><init>()V

    goto :goto_0

    .line 126
    :pswitch_2
    new-instance v0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;-><init>()V

    goto :goto_0

    .line 128
    :pswitch_3
    new-instance v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;-><init>()V

    goto :goto_0

    .line 130
    :pswitch_4
    new-instance v0, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;-><init>()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getFragmentForElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)Landroid/support/v4/app/Fragment;
    .locals 8
    .param p1, "config"    # Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 79
    sget-object v3, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory$1;->$SwitchMap$com$eventgenie$android$viewconfig$base$ConfigElementType:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getType()Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 116
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/factory/FragmentFactory;->getFragmentForElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    :goto_0
    return-object v2

    .line 81
    :pswitch_0
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->getInfoFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v3, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mEntityId:Ljava/lang/Long;

    iget-object v4, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p1}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v5

    invoke-virtual {p1}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->newRelatedListInstance(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    move-result-object v2

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p1}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->getChildElements()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->newExternalListInstance(Ljava/util/List;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;

    move-result-object v2

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v3, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_0

    .line 94
    new-instance v2, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    invoke-direct {v2}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;-><init>()V

    .line 99
    .local v2, "mapFrag":Landroid/support/v4/app/Fragment;
    :goto_1
    invoke-virtual {v2, v6}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    goto :goto_0

    .line 96
    .end local v2    # "mapFrag":Landroid/support/v4/app/Fragment;
    :cond_0
    new-instance v2, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;

    invoke-direct {v2}, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;-><init>()V

    .restart local v2    # "mapFrag":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 104
    .end local v2    # "mapFrag":Landroid/support/v4/app/Fragment;
    :pswitch_4
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;-><init>()V

    .line 106
    .local v0, "asFrag":Landroid/support/v4/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v1, "b":Landroid/os/Bundle;
    const-string v3, "EXTRA_ENTITYTYPE"

    iget-object v4, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 108
    const-string v3, "EXTRA_ENTITYID"

    iget-object v4, p0, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;->mEntityId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 109
    const-string v3, "EXTRA_MODE"

    sget-object v4, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ENTITY:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {v0, v6}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    move-object v2, v0

    .line 113
    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
