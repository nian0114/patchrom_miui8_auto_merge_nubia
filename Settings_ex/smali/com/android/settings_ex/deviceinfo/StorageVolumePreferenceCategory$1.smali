.class Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [J

    move-object v1, v2

    check-cast v1, [J

    .line 111
    .local v1, "size":[J
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    const/4 v3, 0x1

    aget-wide v6, v1, v3

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJ)V
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;JJ)V

    goto :goto_0

    .line 115
    .end local v1    # "size":[J
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 116
    .local v0, "details":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateDetails(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
