.class public final Lcom/android/providers/settings/SettingsState$Setting;
.super Ljava/lang/Object;
.source "SettingsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Setting"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/settings/SettingsState;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/providers/settings/SettingsState$Setting;->this$0:Lcom/android/providers/settings/SettingsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    # operator++ for: Lcom/android/providers/settings/SettingsState;->mNextId:J
    invoke-static {p1}, Lcom/android/providers/settings/SettingsState;->access$308(Lcom/android/providers/settings/SettingsState;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/providers/settings/SettingsState$Setting;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "id"    # Ljava/lang/String;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/providers/settings/SettingsState$Setting;->this$0:Lcom/android/providers/settings/SettingsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    # getter for: Lcom/android/providers/settings/SettingsState;->mNextId:J
    invoke-static {p1}, Lcom/android/providers/settings/SettingsState;->access$300(Lcom/android/providers/settings/SettingsState;)J

    move-result-wide v0

    invoke-static {p5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    # setter for: Lcom/android/providers/settings/SettingsState;->mNextId:J
    invoke-static {p1, v0, v1}, Lcom/android/providers/settings/SettingsState;->access$302(Lcom/android/providers/settings/SettingsState;J)J

    .line 569
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/providers/settings/SettingsState$Setting;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/settings/SettingsState$Setting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsState$Setting;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsState$Setting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsState$Setting;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->value:Ljava/lang/String;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/providers/settings/SettingsState$Setting;->name:Ljava/lang/String;

    .line 574
    iput-object p2, p0, Lcom/android/providers/settings/SettingsState$Setting;->value:Ljava/lang/String;

    .line 575
    iput-object p3, p0, Lcom/android/providers/settings/SettingsState$Setting;->packageName:Ljava/lang/String;

    .line 576
    iput-object p4, p0, Lcom/android/providers/settings/SettingsState$Setting;->id:Ljava/lang/String;

    .line 577
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->value:Ljava/lang/String;

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    .line 599
    :cond_0
    iput-object p1, p0, Lcom/android/providers/settings/SettingsState$Setting;->value:Ljava/lang/String;

    .line 600
    iput-object p2, p0, Lcom/android/providers/settings/SettingsState$Setting;->packageName:Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->this$0:Lcom/android/providers/settings/SettingsState;

    # operator++ for: Lcom/android/providers/settings/SettingsState;->mNextId:J
    invoke-static {v0}, Lcom/android/providers/settings/SettingsState;->access$308(Lcom/android/providers/settings/SettingsState;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsState$Setting;->id:Ljava/lang/String;

    .line 602
    const/4 v0, 0x1

    goto :goto_0
.end method
