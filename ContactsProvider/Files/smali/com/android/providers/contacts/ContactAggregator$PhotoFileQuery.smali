.class interface abstract Lcom/android/providers/contacts/ContactAggregator$PhotoFileQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1988
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filesize"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$PhotoFileQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
