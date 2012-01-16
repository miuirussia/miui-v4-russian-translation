.class interface abstract Lcom/android/providers/contacts/LegacyContactImporter$PhotosQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1014
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PhotosQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
