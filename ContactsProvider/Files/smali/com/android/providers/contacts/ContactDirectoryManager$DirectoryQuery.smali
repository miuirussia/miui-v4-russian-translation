.class final Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# static fields
.field public static final cq:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "typeResourceId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exportSupport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "shortcutSupport"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photoSupport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;->cq:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
