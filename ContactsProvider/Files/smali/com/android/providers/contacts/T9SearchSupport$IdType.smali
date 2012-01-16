.class final enum Lcom/android/providers/contacts/T9SearchSupport$IdType;
.super Ljava/lang/Enum;
.source "T9SearchSupport.java"


# static fields
.field public static final enum nV:Lcom/android/providers/contacts/T9SearchSupport$IdType;

.field public static final enum nW:Lcom/android/providers/contacts/T9SearchSupport$IdType;

.field public static final enum nX:Lcom/android/providers/contacts/T9SearchSupport$IdType;

.field private static final synthetic nY:[Lcom/android/providers/contacts/T9SearchSupport$IdType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1009
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;

    const-string v1, "ContactId"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$IdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nV:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    .line 1014
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;

    const-string v1, "RawContactId"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/contacts/T9SearchSupport$IdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nW:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    .line 1019
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;

    const-string v1, "DataId"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/T9SearchSupport$IdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nX:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    .line 1005
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/providers/contacts/T9SearchSupport$IdType;

    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nV:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nW:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nX:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nY:[Lcom/android/providers/contacts/T9SearchSupport$IdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1005
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$IdType;
    .locals 1
    .parameter

    .prologue
    .line 1005
    const-class v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/contacts/T9SearchSupport$IdType;
    .locals 1

    .prologue
    .line 1005
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nY:[Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-virtual {v0}, [Lcom/android/providers/contacts/T9SearchSupport$IdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/contacts/T9SearchSupport$IdType;

    return-object v0
.end method
