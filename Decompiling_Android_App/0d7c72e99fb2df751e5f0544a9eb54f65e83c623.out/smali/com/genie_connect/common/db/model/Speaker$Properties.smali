.class public Lcom/genie_connect/common/db/model/Speaker$Properties;
.super Ljava/lang/Object;
.source "Speaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/Speaker;
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

.field public static final CompanyName:Lde/greenrobot/dao/Property;

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

.field public static final Department:Lde/greenrobot/dao/Property;

.field public static final EnableGamification:Lde/greenrobot/dao/Property;

.field public static final FirstNames:Lde/greenrobot/dao/Property;

.field public static final FullDescription:Lde/greenrobot/dao/Property;

.field public static final GamePersona_nickname:Lde/greenrobot/dao/Property;

.field public static final HasNote:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final IsFavourite:Lde/greenrobot/dao/Property;

.field public static final JobTitle:Lde/greenrobot/dao/Property;

.field public static final LastAccessed:Lde/greenrobot/dao/Property;

.field public static final LastNames:Lde/greenrobot/dao/Property;

.field public static final Locale:Lde/greenrobot/dao/Property;

.field public static final LoginEmailSent:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final MugShot:Lde/greenrobot/dao/Property;

.field public static final MugShotUrl:Lde/greenrobot/dao/Property;

.field public static final NewPassword:Lde/greenrobot/dao/Property;

.field public static final Password:Lde/greenrobot/dao/Property;

.field public static final ShareUrl:Lde/greenrobot/dao/Property;

.field public static final Timezone:Lde/greenrobot/dao/Property;

.field public static final Title:Lde/greenrobot/dao/Property;

.field public static final TotalPlayerPoints:Lde/greenrobot/dao/Property;

.field public static final UserType:Lde/greenrobot/dao/Property;

.field public static final Username:Lde/greenrobot/dao/Property;

.field public static final Visitor:Lde/greenrobot/dao/Property;

.field public static final _dataversion:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;

.field public static final _namespace:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 184
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "gamePersona_nickname"

    const-string v5, "gamePersona_nickname"

    const-string v6, "speakers"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Speaker$Properties;->GamePersona_nickname:Lde/greenrobot/dao/Property;

    .line 185
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/String;

    const-string v5, "modifiedBy"

    const-string v7, "modifiedBy"

    const-string v8, "speakers"

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 186
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "newPassword"

    const-string v7, "newPassword"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->NewPassword:Lde/greenrobot/dao/Property;

    .line 187
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "loginEmailSent"

    const-string v7, "loginEmailSent"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->LoginEmailSent:Lde/greenrobot/dao/Property;

    .line 188
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "activeGamePlayer"

    const-string v7, "activeGamePlayer"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->ActiveGamePlayer:Lde/greenrobot/dao/Property;

    .line 189
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "password"

    const-string v7, "password"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Password:Lde/greenrobot/dao/Property;

    .line 190
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "userType"

    const-string/jumbo v7, "userType"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->UserType:Lde/greenrobot/dao/Property;

    .line 191
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "timezone"

    const-string/jumbo v7, "timezone"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Timezone:Lde/greenrobot/dao/Property;

    .line 192
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "username"

    const-string/jumbo v7, "username"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Username:Lde/greenrobot/dao/Property;

    .line 193
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "mugShotUrl"

    const-string v7, "mugShotUrl"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->MugShotUrl:Lde/greenrobot/dao/Property;

    .line 194
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "fullDescription"

    const-string v7, "fullDescription"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->FullDescription:Lde/greenrobot/dao/Property;

    .line 195
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "lastNames"

    const-string v7, "lastNames"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->LastNames:Lde/greenrobot/dao/Property;

    .line 196
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 197
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "firstNames"

    const-string v7, "firstNames"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->FirstNames:Lde/greenrobot/dao/Property;

    .line 198
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "totalPlayerPoints"

    const-string/jumbo v7, "totalPlayerPoints"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->TotalPlayerPoints:Lde/greenrobot/dao/Property;

    .line 199
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/String;

    const-string v5, "companyName"

    const-string v7, "companyName"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->CompanyName:Lde/greenrobot/dao/Property;

    .line 200
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 201
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/String;

    const-string v5, "shareUrl"

    const-string v7, "shareUrl"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->ShareUrl:Lde/greenrobot/dao/Property;

    .line 202
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 203
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/String;

    const-string v5, "department"

    const-string v7, "department"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Department:Lde/greenrobot/dao/Property;

    .line 204
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/String;

    const-string v5, "locale"

    const-string v7, "locale"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Locale:Lde/greenrobot/dao/Property;

    .line 205
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/Long;

    const-string v5, "mugShot"

    const-string v7, "mugShot"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->MugShot:Lde/greenrobot/dao/Property;

    .line 206
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_youtubeUrl"

    const-string v7, "contact_youtubeUrl"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_youtubeUrl:Lde/greenrobot/dao/Property;

    .line 207
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x17

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_twitter"

    const-string v7, "contact_twitter"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_twitter:Lde/greenrobot/dao/Property;

    .line 208
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x18

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_linkedIn"

    const-string v7, "contact_linkedIn"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_linkedIn:Lde/greenrobot/dao/Property;

    .line 209
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x19

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_fax"

    const-string v7, "contact_fax"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_fax:Lde/greenrobot/dao/Property;

    .line 210
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1a

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_telephone2"

    const-string v7, "contact_telephone2"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_telephone2:Lde/greenrobot/dao/Property;

    .line 211
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1b

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_email"

    const-string v7, "contact_email"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_email:Lde/greenrobot/dao/Property;

    .line 212
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1c

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_facebook"

    const-string v7, "contact_facebook"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_facebook:Lde/greenrobot/dao/Property;

    .line 213
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1d

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_www"

    const-string v7, "contact_www"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_www:Lde/greenrobot/dao/Property;

    .line 214
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1e

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_telephone"

    const-string v7, "contact_telephone"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_telephone:Lde/greenrobot/dao/Property;

    .line 215
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1f

    const-class v4, Ljava/lang/String;

    const-string v5, "contact_blogUrl"

    const-string v7, "contact_blogUrl"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Contact_blogUrl:Lde/greenrobot/dao/Property;

    .line 216
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x20

    const-class v4, Ljava/lang/Long;

    const-string v5, "id"

    const-string v7, "id"

    const-string v8, "speakers"

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 217
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x21

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "title"

    const-string/jumbo v7, "title"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Title:Lde/greenrobot/dao/Property;

    .line 218
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x22

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 219
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x23

    const-class v4, Ljava/lang/String;

    const-string v5, "briefDescription"

    const-string v7, "briefDescription"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->BriefDescription:Lde/greenrobot/dao/Property;

    .line 220
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x24

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 221
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x25

    const-class v4, Ljava/util/Date;

    const-string v5, "lastAccessed"

    const-string v7, "lastAccessed"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->LastAccessed:Lde/greenrobot/dao/Property;

    .line 222
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x26

    const-class v4, Ljava/lang/String;

    const-string v5, "jobTitle"

    const-string v7, "jobTitle"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->JobTitle:Lde/greenrobot/dao/Property;

    .line 223
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x27

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "enableGamification"

    const-string v7, "enableGamification"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->EnableGamification:Lde/greenrobot/dao/Property;

    .line 224
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x28

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 225
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x29

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "visitor"

    const-string/jumbo v7, "visitor"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Visitor:Lde/greenrobot/dao/Property;

    .line 226
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2a

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 227
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2b

    const-class v4, Ljava/lang/String;

    const-string v5, "address_county"

    const-string v7, "address_county"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Address_county:Lde/greenrobot/dao/Property;

    .line 228
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2c

    const-class v4, Ljava/lang/String;

    const-string v5, "address_postCode"

    const-string v7, "address_postCode"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Address_postCode:Lde/greenrobot/dao/Property;

    .line 229
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2d

    const-class v4, Ljava/lang/String;

    const-string v5, "address_address1"

    const-string v7, "address_address1"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Address_address1:Lde/greenrobot/dao/Property;

    .line 230
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2e

    const-class v4, Ljava/lang/String;

    const-string v5, "address_address2"

    const-string v7, "address_address2"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Address_address2:Lde/greenrobot/dao/Property;

    .line 231
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x2f

    const-class v4, Ljava/lang/String;

    const-string v5, "address_town"

    const-string v7, "address_town"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Address_town:Lde/greenrobot/dao/Property;

    .line 232
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x30

    const-class v4, Ljava/lang/String;

    const-string v5, "address_address3"

    const-string v7, "address_address3"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Address_address3:Lde/greenrobot/dao/Property;

    .line 233
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x31

    const-class v4, Ljava/lang/String;

    const-string v5, "address_country"

    const-string v7, "address_country"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->Address_country:Lde/greenrobot/dao/Property;

    .line 234
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x32

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 235
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x33

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isFavourite"

    const-string v7, "isFavourite"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    .line 236
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x34

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "hasNote"

    const-string v7, "hasNote"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->HasNote:Lde/greenrobot/dao/Property;

    .line 237
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x35

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string v8, "speakers"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Speaker$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
