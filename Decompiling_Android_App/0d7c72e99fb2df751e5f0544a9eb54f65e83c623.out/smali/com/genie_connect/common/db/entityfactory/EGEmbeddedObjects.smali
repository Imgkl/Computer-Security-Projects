.class public Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;
.super Ljava/lang/Object;
.source "EGEmbeddedObjects.java"


# static fields
.field public static final ADDRESS_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final AUTHOR_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final CONTACT_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final MAP_POSITION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final PERMISSIONSET_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final PLAYERACHIEVEMENTS_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final PLAYERTROPHIES_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final RUNNING_TIME_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final SPONSOR_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final TROPHYTHRESHOLD_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final VIEWING_RESTRICTION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "county"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "postCode"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "address1"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "address2"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "address3"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v3, "town"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v3, "country"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGEntity;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->ADDRESS_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "name"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "imageUrl"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "linkUrl"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v2, "exhibitor"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v2, "visitor"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v1, v0, v9

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->AUTHOR_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 64
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v2, "telephone"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v2, "telephone2"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "fax"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "email"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v2, "www"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v3, "youtubeUrl"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v3, "twitter"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v3, "linkedIn"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v3, "facebook"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v3, "blogUrl"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->CONTACT_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 79
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "colour"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "label"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "labelColour"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "rotation"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v2, "textBoundingBox"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v3, "type"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v3, "vectors"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v3, "vectorsFormat"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v3, "version"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v3, "zIndex"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v3, "map"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGEntity;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->MAP_POSITION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v2, "visitorGroup"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "canOpen"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "canView"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "canFavourite"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "canAddToFavourite"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v9

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->PERMISSIONSET_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 101
    new-array v0, v7, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v2, "to"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "from"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->RUNNING_TIME_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "bannerUrl"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "exhibitor"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "infoPage"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "linkType"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "showBanner"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v9

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->SPONSOR_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 114
    new-array v0, v7, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v2, "trophy"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v2, "totalTrophyPoints"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->PLAYERTROPHIES_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 119
    new-array v0, v8, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v2, "trophy"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "reason"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "points"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->PLAYERACHIEVEMENTS_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 126
    new-array v0, v9, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v2, "trophy"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "colour"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v2, "thresholdValue"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "name"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v8

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->TROPHYTHRESHOLD_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 133
    new-array v0, v7, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v2, "visitorGroup"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v2, "visitorAttribute"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->VIEWING_RESTRICTION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
