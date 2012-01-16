.class interface abstract Lcom/android/providers/contacts/LegacyContactImporter$ContactMethodsQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 742
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kind"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "aux_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$ContactMethodsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
