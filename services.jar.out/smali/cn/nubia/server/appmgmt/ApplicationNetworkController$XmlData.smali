.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmlData"
.end annotation


# instance fields
.field private array:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDelay:J

.field private screenDelay:J

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;JJLjava/util/HashMap;)V
    .locals 0
    .param p2, "delay1"    # J
    .param p4, "delay2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J

    iput-wide p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J

    iput-object p6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->array:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    .prologue
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J

    return-wide v0
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J

    return-wide p1
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    .prologue
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J

    return-wide v0
.end method

.method static synthetic access$302(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J

    return-wide p1
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->array:Ljava/util/HashMap;

    return-object v0
.end method
