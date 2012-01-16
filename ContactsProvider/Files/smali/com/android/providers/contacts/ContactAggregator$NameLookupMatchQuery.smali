.class interface abstract Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1294
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nameA.normalized_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nameA.name_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nameB.name_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
