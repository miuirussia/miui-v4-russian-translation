.class interface abstract Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1043
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "raw_contacts1.contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "raw_contacts1.aggregation_needed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "raw_contacts2.contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "raw_contacts2.aggregation_needed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
