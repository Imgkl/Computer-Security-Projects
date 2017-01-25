.class public Lcom/genie_connect/common/db/model/Exhibitor$Properties;
.super Ljava/lang/Object;
.source "Exhibitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/Exhibitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final ActiveGamePlayer:Lde/greenrobot/dao/Property;

.field public static final Address_address1:Lde/greenrobot/dao/Property;

.field public static final Address_address2:Lde/greenrobot/dao/Property;

.field public static final Address_address3:Lde/greenrobot/dao/Property;

.field public static final Address_country:Lde/greenrobot/dao/Property;

.field public static final Address_county:Lde/greenrobot/dao/Property;

.field public static final Address_postCode:Lde/greenrobot/dao/Property;

.field public static final Address_town:Lde/greenrobot/dao/Property;

.field public static final BriefDescription:Lde/greenrobot/dao/Property;

.field public static final Category:Lde/greenrobot/dao/Property;

.field public static final Contact_blogUrl:Lde/greenrobot/dao/Property;

.field public static final Contact_email:Lde/greenrobot/dao/Property;

.field public static final Contact_facebook:Lde/greenrobot/dao/Property;

.field public static final Contact_fax:Lde/greenrobot/dao/Property;

.field public static final Contact_linkedIn:Lde/greenrobot/dao/Property;

.field public static final Contact_telephone:Lde/greenrobot/dao/Property;

.field public static final Contact_telephone2:Lde/greenrobot/dao/Property;

.field public static final Contact_twitter:Lde/greenrobot/dao/Property;

.field public static final Contact_www:Lde/greenrobot/dao/Property;

.field public static final Contact_youtubeUrl:Lde/greenrobot/dao/Property;

.field public static final CreatedBy:Lde/greenrobot/dao/Property;

.field public static final CreatedDate:Lde/greenrobot/dao/Property;

.field public static final EnableGamification:Lde/greenrobot/dao/Property;

.field public static final ExhibitorType:Lde/greenrobot/dao/Property;

.field public static final Featured:Lde/greenrobot/dao/Property;

.field public static final FullDescription:Lde/greenrobot/dao/Property;

.field public static final GamePersona_nickname:Lde/greenrobot/dao/Property;

.field public static final HasNote:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final IsFavourite:Lde/greenrobot/dao/Property;

.field public static final LastAccessed:Lde/greenrobot/dao/Property;

.field public static final Locale:Lde/greenrobot/dao/Property;

.field public static final LoginEmailSent:Lde/greenrobot/dao/Property;

.field public static final Logo:Lde/greenrobot/dao/Property;

.field public static final LogoUrl:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final Name:Lde/greenrobot/dao/Property;

.field public static final NewPassword:Lde/greenrobot/dao/Property;

.field public static final Password:Lde/greenrobot/dao/Property;

.field public static final SeqNo:Lde/greenrobot/dao/Property;

.field public static final ShareUrl:Lde/greenrobot/dao/Property;

.field public static final Timezone:Lde/greenrobot/dao/Property;

.field public static final TotalPlayerPoints:Lde/greenrobot/dao/Property;

.field public static final UserType:Lde/greenrobot/dao/Property;

.field public static final Username:Lde/greenrobot/dao/Property;

.field public static final _dataversion:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;

.field public static final _namespace:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 129
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "seqNo"

    const-string v5, "seqNo"

    const-string v6, "exhibitors"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->SeqNo:Lde/greenrobot/dao/Property;

    .line 130
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/String;

    const-string v5, "gamePersona_nickname"

    const-string v7, "gamePersona_nickname"

    const-string v8, "exhibitors"

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->GamePersona_nickname:Lde/greenrobot/dao/Property;

    .line 131
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "newPassword"

    const-string v7, "newPassword"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->NewPassword:Lde/greenrobot/dao/Property;

    .line 132
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "modifiedBy"

    const-string v7, "modifiedBy"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 133
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "locale"

    const-string v7, "locale"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Locale:Lde/greenrobot/dao/Property;

    .line 134
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "loginEmailSent"

    const-string v7, "loginEmailSent"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->LoginEmailSent:Lde/greenrobot/dao/Property;

    .line 135
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Long;

    const-string v5, "featured"

    const-string v7, "featured"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Featured:Lde/greenrobot/dao/Property;

    .line 136
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "password"

    const-string v7, "password"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Password:Lde/greenrobot/dao/Property;

    .line 137
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_youtubeUrl"

    const-string v7, "contact_youtubeUrl"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_youtubeUrl:Lde/greenrobot/dao/Property;

    .line 138
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_twitter"

    const-string v7, "contact_twitter"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_twitter:Lde/greenrobot/dao/Property;

    .line 139
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_linkedIn"

    const-string v7, "contact_linkedIn"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_linkedIn:Lde/greenrobot/dao/Property;

    .line 140
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_fax"

    const-string v7, "contact_fax"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_fax:Lde/greenrobot/dao/Property;

    .line 141
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_telephone2"

    const-string v7, "contact_telephone2"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_telephone2:Lde/greenrobot/dao/Property;

    .line 142
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_email"

    const-string v7, "contact_email"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_email:Lde/greenrobot/dao/Property;

    .line 143
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_facebook"

    const-string v7, "contact_facebook"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_facebook:Lde/greenrobot/dao/Property;

    .line 144
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_www"

    const-string v7, "contact_www"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_www:Lde/greenrobot/dao/Property;

    .line 145
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_telephone"

    const-string v7, "contact_telephone"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_telephone:Lde/greenrobot/dao/Property;

    .line 146
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_blogUrl"

    const-string v7, "contact_blogUrl"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Contact_blogUrl:Lde/greenrobot/dao/Property;

    .line 147
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "activeGamePlayer"

    const-string v7, "activeGamePlayer"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->ActiveGamePlayer:Lde/greenrobot/dao/Property;

    .line 148
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "userType"

    const-string/jumbo v7, "userType"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->UserType:Lde/greenrobot/dao/Property;

    .line 149
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/Long;

    const-string v5, "id"

    const-string v7, "id"

    const-string v8, "exhibitors"

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 150
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "username"

    const-string/jumbo v7, "username"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Username:Lde/greenrobot/dao/Property;

    .line 151
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "timezone"

    const-string/jumbo v7, "timezone"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Timezone:Lde/greenrobot/dao/Property;

    .line 152
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x17

    const-class v4, Ljava/lang/String;

    const-string v5, "fullDescription"

    const-string v7, "fullDescription"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->FullDescription:Lde/greenrobot/dao/Property;

    .line 153
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x18

    const-class v4, Ljava/lang/String;

    const-string v5, "briefDescription"

    const-string v7, "briefDescription"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->BriefDescription:Lde/greenrobot/dao/Property;

    .line 154
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x19

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 155
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1a

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    const-string v7, "name"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Name:Lde/greenrobot/dao/Property;

    .line 156
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1b

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 157
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1c

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 158
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1d

    const-class v4, Ljava/util/Date;

    const-string v5, "lastAccessed"

    const-string v7, "lastAccessed"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->LastAccessed:Lde/greenrobot/dao/Property;

    .line 159
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1e

    const-class v4, Ljava/lang/Long;

    const-string v5, "logo"

    const-string v7, "logo"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Logo:Lde/greenrobot/dao/Property;

    .line 160
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1f

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "totalPlayerPoints"

    const-string/jumbo v7, "totalPlayerPoints"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->TotalPlayerPoints:Lde/greenrobot/dao/Property;

    .line 161
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x20

    const-class v4, Ljava/lang/String;

    const-string v5, "logoUrl"

    const-string v7, "logoUrl"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->LogoUrl:Lde/greenrobot/dao/Property;

    .line 162
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x21

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 163
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x22

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "enableGamification"

    const-string v7, "enableGamification"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->EnableGamification:Lde/greenrobot/dao/Property;

    .line 164
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x23

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 165
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x24

    const-class v4, Ljava/lang/String;

    const-string v5, "category"

    const-string v7, "category"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Category:Lde/greenrobot/dao/Property;

    .line 166
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x25

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 167
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x26

    const-class v4, Ljava/lang/String;

    const-string v5, "address_county"

    const-string v7, "address_county"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Address_county:Lde/greenrobot/dao/Property;

    .line 168
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x27

    const-class v4, Ljava/lang/String;

    const-string v5, "address_postCode"

    const-string v7, "address_postCode"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Address_postCode:Lde/greenrobot/dao/Property;

    .line 169
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x28

    const-class v4, Ljava/lang/String;

    const-string v5, "address_address1"

    const-string v7, "address_address1"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Address_address1:Lde/greenrobot/dao/Property;

    .line 170
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x29

    const-class v4, Ljava/lang/String;

    const-string v5, "address_address2"

    const-string v7, "address_address2"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Address_address2:Lde/greenrobot/dao/Property;

    .line 171
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2a

    const-class v4, Ljava/lang/String;

    const-string v5, "address_town"

    const-string v7, "address_town"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Address_town:Lde/greenrobot/dao/Property;

    .line 172
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2b

    const-class v4, Ljava/lang/String;

    const-string v5, "address_address3"

    const-string v7, "address_address3"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Address_address3:Lde/greenrobot/dao/Property;

    .line 173
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2c

    const-class v4, Ljava/lang/String;

    const-string v5, "address_country"

    const-string v7, "address_country"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Address_country:Lde/greenrobot/dao/Property;

    .line 174
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2d

    const-class v4, Ljava/lang/String;

    const-string v5, "shareUrl"

    const-string v7, "shareUrl"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->ShareUrl:Lde/greenrobot/dao/Property;

    .line 175
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2e

    const-class v4, Ljava/lang/String;

    const-string v5, "exhibitorType"

    const-string v7, "exhibitorType"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->ExhibitorType:Lde/greenrobot/dao/Property;

    .line 176
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2f

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 177
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x30

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 178
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x31

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isFavourite"

    const-string v7, "isFavourite"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    .line 179
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x32

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "hasNote"

    const-string v7, "hasNote"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->HasNote:Lde/greenrobot/dao/Property;

    .line 180
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x33

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string v8, "exhibitors"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
