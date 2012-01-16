.class interface abstract Lcom/android/providers/contacts/LegacyContactImporter$GroupsQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 238
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "should_sync"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$GroupsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
