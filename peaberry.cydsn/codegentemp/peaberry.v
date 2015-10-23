// ======================================================================
// peaberry.v generated from TopDesign.cysch
// 10/22/2015 at 22:07
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_TMA4 2
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 3
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC5LP 4
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PANTHER 5
`define CYDEV_CHIP_REV_PANTHER_PRODUCTION 1
`define CYDEV_CHIP_REV_PANTHER_ES1 1
`define CYDEV_CHIP_REV_PANTHER_ES0 0
`define CYDEV_CHIP_DIE_EXPECT 1
`define CYDEV_CHIP_REV_EXPECT 3
`define CYDEV_CHIP_DIE_ACTUAL 1
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_MEMBER_4G 2
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 3
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 4
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 5
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 6
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 7
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 8
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 9
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 10
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 11
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4F 12
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4M 13
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 14
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 15
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4C 16
`define CYDEV_CHIP_REVISION_4C_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_MEMBER_5B 17
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 18
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_FAMILY_USED 1
`define CYDEV_CHIP_MEMBER_USED 1
`define CYDEV_CHIP_REVISION_USED 3
// Component: CyStatusReg_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_80\CyStatusReg_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_80\CyStatusReg_v1_80.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// Component: cy_sync_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_sync_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_sync_v1_0\cy_sync_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_sync_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_sync_v1_0\cy_sync_v1_0.v"
`endif

// USBFS_v2_80(AudioDescriptors=<?xml version="1.0" encoding="utf-16"?> <Tree xmlns:CustomizerVersion="2_50">   <Tree_x0020_Descriptors>     <DescriptorNode Key="Audio">       <Nodes>         <DescriptorNode Key="Interface1150">           <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>ALTERNATE</bDescriptorType>             <bLength>0</bLength>             <DisplayName>B96 Radio</DisplayName>           </Value>           <Nodes>             <DescriptorNode Key="USBDescriptor1151">               <Value d8p1:type="CyAudioInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">                 <bDescriptorType>INTERFACE</bDescriptorType>                 <bLength>9</bLength>                 <iwInterface>336</iwInterface>                 <bInterfaceClass>1</bInterfaceClass>                 <bInterfaceNumber>1</bInterfaceNumber>                 <bNumEndpoints>0</bNumEndpoints>                 <bInterfaceSubClass>1</bInterfaceSubClass>                 <bInterfaceProtocol>0</bInterfaceProtocol>                 <iInterface>5</iInterface>                 <sInterface>Peaberry Radio</sInterface>               </Value>               <Nodes>                 <DescriptorNode Key="USBDescriptor1153">                   <Value d10p1:type="CyACHeaderDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>10</bLength>                     <bDescriptorSubtype>HEADER</bDescriptorSubtype>                     <bcdADC>256</bcdADC>                     <wTotalLength>52</wTotalLength>                     <bInCollection>2</bInCollection>                     <baInterfaceNr>AgM=</baInterfaceNr>                   </Value>                   <Nodes />                 </DescriptorNode>                 <DescriptorNode Key="USBDescriptor1154">                   <Value d10p1:type="CyACInputTerminalDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>12</bLength>                     <iwChannelNames>0</iwChannelNames>                     <iwTerminal>0</iwTerminal>                     <bDescriptorSubtype>INPUT_TERMINAL</bDescriptorSubtype>                     <bTerminalID>1</bTerminalID>                     <wTerminalType>1539</wTerminalType>                     <bNrChannels>2</bNrChannels>                     <wChannelConfig>3</wChannelConfig>                     <iChannelNames>0</iChannelNames>                     <iTerminal>0</iTerminal>                   </Value>                   <Nodes />                 </DescriptorNode>                 <DescriptorNode Key="USBDescriptor1155">                   <Value d10p1:type="CyACOutputTerminalDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>9</bLength>                     <iwTerminal>0</iwTerminal>                     <bDescriptorSubtype>OUTPUT_TERMINAL</bDescriptorSubtype>                     <bTerminalID>2</bTerminalID>                     <wTerminalType>257</wTerminalType>                     <bSourceID>1</bSourceID>                     <iTerminal>0</iTerminal>                   </Value>                   <Nodes />                 </DescriptorNode>                 <DescriptorNode Key="USBDescriptor1156">                   <Value d10p1:type="CyACInputTerminalDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>12</bLength>                     <iwChannelNames>0</iwChannelNames>                     <iwTerminal>0</iwTerminal>                     <bDescriptorSubtype>INPUT_TERMINAL</bDescriptorSubtype>                     <bTerminalID>3</bTerminalID>                     <wTerminalType>257</wTerminalType>                     <bNrChannels>2</bNrChannels>                     <wChannelConfig>3</wChannelConfig>                     <iChannelNames>0</iChannelNames>                     <iTerminal>0</iTerminal>                   </Value>                   <Nodes />                 </DescriptorNode>                 <DescriptorNode Key="USBDescriptor1157">                   <Value d10p1:type="CyACOutputTerminalDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>9</bLength>                     <iwTerminal>0</iwTerminal>                     <bDescriptorSubtype>OUTPUT_TERMINAL</bDescriptorSubtype>                     <bTerminalID>4</bTerminalID>                     <wTerminalType>1539</wTerminalType>                     <bSourceID>3</bSourceID>                     <iTerminal>0</iTerminal>                   </Value>                   <Nodes />                 </DescriptorNode>               </Nodes>             </DescriptorNode>           </Nodes>         </DescriptorNode>         <DescriptorNode Key="Interface1158">           <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>ALTERNATE</bDescriptorType>             <bLength>0</bLength>             <DisplayName>B96 Receive</DisplayName>           </Value>           <Nodes>             <DescriptorNode Key="USBDescriptor1159">               <Value d8p1:type="CyAudioInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">                 <bDescriptorType>INTERFACE</bDescriptorType>                 <bLength>9</bLength>                 <iwInterface>242</iwInterface>                 <bInterfaceClass>1</bInterfaceClass>                 <bInterfaceNumber>2</bInterfaceNumber>                 <bNumEndpoints>0</bNumEndpoints>                 <bInterfaceSubClass>2</bInterfaceSubClass>                 <bInterfaceProtocol>0</bInterfaceProtocol>                 <iInterface>3</iInterface>                 <sInterface>Peaberry Receive</sInterface>               </Value>               <Nodes />             </DescriptorNode>             <DescriptorNode Key="USBDescriptor1164">               <Value d8p1:type="CyAudioInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">                 <bDescriptorType>INTERFACE</bDescriptorType>                 <bLength>9</bLength>                 <iwInterface>242</iwInterface>                 <bInterfaceClass>1</bInterfaceClass>                 <bAlternateSetting>1</bAlternateSetting>                 <bInterfaceNumber>2</bInterfaceNumber>                 <bNumEndpoints>1</bNumEndpoints>                 <bInterfaceSubClass>2</bInterfaceSubClass>                 <bInterfaceProtocol>0</bInterfaceProtocol>                 <iInterface>3</iInterface>                 <sInterface>Peaberry Receive</sInterface>               </Value>               <Nodes>                 <DescriptorNode Key="USBDescriptor1166">                   <Value d10p1:type="CyASGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>7</bLength>                     <bDescriptorSubtype>AS_GENERAL</bDescriptorSubtype>                     <bTerminalLink>2</bTerminalLink>                     <bDelay>2</bDelay>                     <wFormatTag>1</wFormatTag>                   </Value>                   <Nodes />                 </DescriptorNode>                 <DescriptorNode Key="USBDescriptor1167">                   <Value d10p1:type="CyASFormatType1Descriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>11</bLength>                     <bDescriptorSubtype>FORMAT_TYPE</bDescriptorSubtype>                     <bFormatType>FORMAT_TYPE_1</bFormatType>                     <bSamFreqType>1</bSamFreqType>                     <tSamFreq>                       <unsignedInt>96000</unsignedInt>                     </tSamFreq>                     <bNrChannels>2</bNrChannels>                     <bSubframeSize>2</bSubframeSize>                     <bBitResolution>16</bBitResolution>                   </Value>                   <Nodes />                 </DescriptorNode>                 <DescriptorNode Key="USBDescriptor1168">                   <Value d10p1:type="CyAudioEndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>ENDPOINT</bDescriptorType>                     <bLength>9</bLength>                     <DoubleBuffer>false</DoubleBuffer>                     <bInterval>1</bInterval>                     <bEndpointAddress>130</bEndpointAddress>                     <bmAttributes>45</bmAttributes>                     <wMaxPacketSize>384</wMaxPacketSize>                   </Value>                   <Nodes>                     <DescriptorNode Key="USBDescriptor1169">                       <Value d12p1:type="CyASEndpointDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">                         <bDescriptorType>CS_ENDPOINT</bDescriptorType>                         <bLength>7</bLength>                         <bDescriptorSubtype>EP_GENERAL</bDescriptorSubtype>                         <bmAttributes>128</bmAttributes>                         <bLockDelayUnits>1</bLockDelayUnits>                       </Value>                       <Nodes />                     </DescriptorNode>                   </Nodes>                 </DescriptorNode>               </Nodes>             </DescriptorNode>           </Nodes>         </DescriptorNode>         <DescriptorNode Key="Interface1170">           <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>ALTERNATE</bDescriptorType>             <bLength>0</bLength>             <DisplayName>B96 Transmit</DisplayName>           </Value>           <Nodes>             <DescriptorNode Key="USBDescriptor1171">               <Value d8p1:type="CyAudioInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">                 <bDescriptorType>INTERFACE</bDescriptorType>                 <bLength>9</bLength>                 <iwInterface>251</iwInterface>                 <bInterfaceClass>1</bInterfaceClass>                 <bInterfaceNumber>3</bInterfaceNumber>                 <bNumEndpoints>0</bNumEndpoints>                 <bInterfaceSubClass>2</bInterfaceSubClass>                 <bInterfaceProtocol>0</bInterfaceProtocol>                 <iInterface>4</iInterface>                 <sInterface>Peaberry Transmit</sInterface>               </Value>               <Nodes />             </DescriptorNode>             <DescriptorNode Key="USBDescriptor1176">               <Value d8p1:type="CyAudioInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">                 <bDescriptorType>INTERFACE</bDescriptorType>                 <bLength>9</bLength>                 <iwInterface>251</iwInterface>                 <bInterfaceClass>1</bInterfaceClass>                 <bAlternateSetting>1</bAlternateSetting>                 <bInterfaceNumber>3</bInterfaceNumber>                 <bNumEndpoints>1</bNumEndpoints>                 <bInterfaceSubClass>2</bInterfaceSubClass>                 <bInterfaceProtocol>0</bInterfaceProtocol>                 <iInterface>4</iInterface>                 <sInterface>Peaberry Transmit</sInterface>               </Value>               <Nodes>                 <DescriptorNode Key="USBDescriptor1178">                   <Value d10p1:type="CyASGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>7</bLength>                     <bDescriptorSubtype>AS_GENERAL</bDescriptorSubtype>                     <bTerminalLink>3</bTerminalLink>                     <bDelay>1</bDelay>                     <wFormatTag>1</wFormatTag>                   </Value>                   <Nodes />                 </DescriptorNode>                 <DescriptorNode Key="USBDescriptor1179">                   <Value d10p1:type="CyASFormatType1Descriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>AUDIO</bDescriptorType>                     <bLength>11</bLength>                     <bDescriptorSubtype>FORMAT_TYPE</bDescriptorSubtype>                     <bFormatType>FORMAT_TYPE_1</bFormatType>                     <bSamFreqType>1</bSamFreqType>                     <tSamFreq>                       <unsignedInt>96000</unsignedInt>                     </tSamFreq>                     <bNrChannels>2</bNrChannels>                     <bSubframeSize>2</bSubframeSize>                     <bBitResolution>16</bBitResolution>                   </Value>                   <Nodes />                 </DescriptorNode>                 <DescriptorNode Key="USBDescriptor1180">                   <Value d10p1:type="CyAudioEndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>ENDPOINT</bDescriptorType>                     <bLength>9</bLength>                     <DoubleBuffer>false</DoubleBuffer>                     <bInterval>1</bInterval>                     <bEndpointAddress>3</bEndpointAddress>                     <bmAttributes>45</bmAttributes>                     <wMaxPacketSize>384</wMaxPacketSize>                   </Value>                   <Nodes>                     <DescriptorNode Key="USBDescriptor1181">                       <Value d12p1:type="CyASEndpointDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">                         <bDescriptorType>CS_ENDPOINT</bDescriptorType>                         <bLength>7</bLength>                         <bDescriptorSubtype>EP_GENERAL</bDescriptorSubtype>                         <bmAttributes>128</bmAttributes>                         <bLockDelayUnits>1</bLockDelayUnits>                       </Value>                       <Nodes />                     </DescriptorNode>                   </Nodes>                 </DescriptorNode>               </Nodes>             </DescriptorNode>           </Nodes>         </DescriptorNode>       </Nodes>     </DescriptorNode>   </Tree_x0020_Descriptors> </Tree>, CDCDescriptors=<?xml version="1.0" encoding="utf-16"?> <Tree xmlns:CustomizerVersion="2_50">   <Tree_x0020_Descriptors>     <DescriptorNode Key="CDC">       <Nodes />     </DescriptorNode>   </Tree_x0020_Descriptors> </Tree>, DeviceDescriptors=<?xml version="1.0" encoding="utf-16"?> <Tree xmlns:CustomizerVersion="2_50">   <Tree_x0020_Descriptors>     <DescriptorNode Key="Device">       <Nodes>         <DescriptorNode Key="USBDescriptor1138">           <Value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>DEVICE</bDescriptorType>             <bLength>18</bLength>             <iwManufacturer>1183</iwManufacturer>             <iwProduct>188</iwProduct>             <sManufacturer>www.obdev.at</sManufacturer>             <sProduct>Peaberry SDR</sProduct>             <sSerialNumber>PE0FKO-0</sSerialNumber>             <bDeviceClass>0</bDeviceClass>             <bDeviceSubClass>0</bDeviceSubClass>             <bDeviceProtocol>0</bDeviceProtocol>             <bMaxPacketSize0>0</bMaxPacketSize0>             <idVendor>5824</idVendor>             <idProduct>1500</idProduct>             <bcdDevice>3</bcdDevice>             <iManufacturer>7</iManufacturer>             <iProduct>2</iProduct>             <iSerialNumber>0</iSerialNumber>             <bNumConfigurations>1</bNumConfigurations>             <bMemoryMgmt>0</bMemoryMgmt>             <bMemoryAlloc>0</bMemoryAlloc>           </Value>           <Nodes>             <DescriptorNode Key="USBDescriptor1143">               <Value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">                 <bDescriptorType>CONFIGURATION</bDescriptorType>                 <bLength>9</bLength>                 <iwConfiguration>0</iwConfiguration>                 <wTotalLength>183</wTotalLength>                 <bNumInterfaces>4</bNumInterfaces>                 <bConfigurationValue>0</bConfigurationValue>                 <iConfiguration>0</iConfiguration>                 <bmAttributes>192</bmAttributes>                 <bMaxPower>2</bMaxPower>               </Value>               <Nodes>                 <DescriptorNode Key="Interface1147">                   <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>ALTERNATE</bDescriptorType>                     <bLength>0</bLength>                     <DisplayName />                   </Value>                   <Nodes>                     <DescriptorNode Key="USBDescriptor1148">                       <Value d12p1:type="InterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">                         <bDescriptorType>INTERFACE</bDescriptorType>                         <bLength>9</bLength>                         <iwInterface>1182</iwInterface>                         <bInterfaceClass>255</bInterfaceClass>                         <bNumEndpoints>0</bNumEndpoints>                         <bInterfaceSubClass>0</bInterfaceSubClass>                         <bInterfaceProtocol>0</bInterfaceProtocol>                         <iInterface>6</iInterface>                         <sInterface>DG8SAQ-I2C</sInterface>                       </Value>                       <Nodes />                     </DescriptorNode>                   </Nodes>                 </DescriptorNode>                 <DescriptorNode Key="Interface1150">                   <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>ALTERNATE</bDescriptorType>                     <bLength>0</bLength>                     <DisplayName>B96 Radio</DisplayName>                   </Value>                   <Nodes>                     <DescriptorNode Key="USBDescriptor1151">                       <Value d12p1:type="CyAudioInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">                         <bDescriptorType>INTERFACE</bDescriptorType>                         <bLength>9</bLength>                         <iwInterface>336</iwInterface>                         <bInterfaceClass>1</bInterfaceClass>                         <bInterfaceNumber>1</bInterfaceNumber>                         <bNumEndpoints>0</bNumEndpoints>                         <bInterfaceSubClass>1</bInterfaceSubClass>                         <bInterfaceProtocol>0</bInterfaceProtocol>                         <iInterface>5</iInterface>                         <sInterface>Peaberry Radio</sInterface>                       </Value>                       <Nodes>                         <DescriptorNode Key="USBDescriptor1153">                           <Value d14p1:type="CyACHeaderDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>10</bLength>                             <bDescriptorSubtype>HEADER</bDescriptorSubtype>                             <bcdADC>256</bcdADC>                             <wTotalLength>52</wTotalLength>                             <bInCollection>2</bInCollection>                             <baInterfaceNr>AgM=</baInterfaceNr>                           </Value>                           <Nodes />                         </DescriptorNode>                         <DescriptorNode Key="USBDescriptor1154">                           <Value d14p1:type="CyACInputTerminalDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>12</bLength>                             <iwChannelNames>0</iwChannelNames>                             <iwTerminal>0</iwTerminal>                             <bDescriptorSubtype>INPUT_TERMINAL</bDescriptorSubtype>                             <bTerminalID>1</bTerminalID>                             <wTerminalType>1539</wTerminalType>                             <bNrChannels>2</bNrChannels>                             <wChannelConfig>3</wChannelConfig>                             <iChannelNames>0</iChannelNames>                             <iTerminal>0</iTerminal>                           </Value>                           <Nodes />                         </DescriptorNode>                         <DescriptorNode Key="USBDescriptor1155">                           <Value d14p1:type="CyACOutputTerminalDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>9</bLength>                             <iwTerminal>0</iwTerminal>                             <bDescriptorSubtype>OUTPUT_TERMINAL</bDescriptorSubtype>                             <bTerminalID>2</bTerminalID>                             <wTerminalType>257</wTerminalType>                             <bSourceID>1</bSourceID>                             <iTerminal>0</iTerminal>                           </Value>                           <Nodes />                         </DescriptorNode>                         <DescriptorNode Key="USBDescriptor1156">                           <Value d14p1:type="CyACInputTerminalDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>12</bLength>                             <iwChannelNames>0</iwChannelNames>                             <iwTerminal>0</iwTerminal>                             <bDescriptorSubtype>INPUT_TERMINAL</bDescriptorSubtype>                             <bTerminalID>3</bTerminalID>                             <wTerminalType>257</wTerminalType>                             <bNrChannels>2</bNrChannels>                             <wChannelConfig>3</wChannelConfig>                             <iChannelNames>0</iChannelNames>                             <iTerminal>0</iTerminal>                           </Value>                           <Nodes />                         </DescriptorNode>                         <DescriptorNode Key="USBDescriptor1157">                           <Value d14p1:type="CyACOutputTerminalDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>9</bLength>                             <iwTerminal>0</iwTerminal>                             <bDescriptorSubtype>OUTPUT_TERMINAL</bDescriptorSubtype>                             <bTerminalID>4</bTerminalID>                             <wTerminalType>1539</wTerminalType>                             <bSourceID>3</bSourceID>                             <iTerminal>0</iTerminal>                           </Value>                           <Nodes />                         </DescriptorNode>                       </Nodes>                     </DescriptorNode>                   </Nodes>                 </DescriptorNode>                 <DescriptorNode Key="Interface1158">                   <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>ALTERNATE</bDescriptorType>                     <bLength>0</bLength>                     <DisplayName>B96 Receive</DisplayName>                   </Value>                   <Nodes>                     <DescriptorNode Key="USBDescriptor1159">                       <Value d12p1:type="CyAudioInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">                         <bDescriptorType>INTERFACE</bDescriptorType>                         <bLength>9</bLength>                         <iwInterface>242</iwInterface>                         <bInterfaceClass>1</bInterfaceClass>                         <bInterfaceNumber>2</bInterfaceNumber>                         <bNumEndpoints>0</bNumEndpoints>                         <bInterfaceSubClass>2</bInterfaceSubClass>                         <bInterfaceProtocol>0</bInterfaceProtocol>                         <iInterface>3</iInterface>                         <sInterface>Peaberry Receive</sInterface>                       </Value>                       <Nodes />                     </DescriptorNode>                     <DescriptorNode Key="USBDescriptor1164">                       <Value d12p1:type="CyAudioInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">                         <bDescriptorType>INTERFACE</bDescriptorType>                         <bLength>9</bLength>                         <iwInterface>242</iwInterface>                         <bInterfaceClass>1</bInterfaceClass>                         <bAlternateSetting>1</bAlternateSetting>                         <bInterfaceNumber>2</bInterfaceNumber>                         <bNumEndpoints>1</bNumEndpoints>                         <bInterfaceSubClass>2</bInterfaceSubClass>                         <bInterfaceProtocol>0</bInterfaceProtocol>                         <iInterface>3</iInterface>                         <sInterface>Peaberry Receive</sInterface>                       </Value>                       <Nodes>                         <DescriptorNode Key="USBDescriptor1166">                           <Value d14p1:type="CyASGeneralDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>7</bLength>                             <bDescriptorSubtype>AS_GENERAL</bDescriptorSubtype>                             <bTerminalLink>2</bTerminalLink>                             <bDelay>2</bDelay>                             <wFormatTag>1</wFormatTag>                           </Value>                           <Nodes />                         </DescriptorNode>                         <DescriptorNode Key="USBDescriptor1167">                           <Value d14p1:type="CyASFormatType1Descriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>11</bLength>                             <bDescriptorSubtype>FORMAT_TYPE</bDescriptorSubtype>                             <bFormatType>FORMAT_TYPE_1</bFormatType>                             <bSamFreqType>1</bSamFreqType>                             <tSamFreq>                               <unsignedInt>96000</unsignedInt>                             </tSamFreq>                             <bNrChannels>2</bNrChannels>                             <bSubframeSize>2</bSubframeSize>                             <bBitResolution>16</bBitResolution>                           </Value>                           <Nodes />                         </DescriptorNode>                         <DescriptorNode Key="USBDescriptor1168">                           <Value d14p1:type="CyAudioEndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>ENDPOINT</bDescriptorType>                             <bLength>9</bLength>                             <DoubleBuffer>false</DoubleBuffer>                             <bInterval>1</bInterval>                             <bEndpointAddress>130</bEndpointAddress>                             <bmAttributes>45</bmAttributes>                             <wMaxPacketSize>384</wMaxPacketSize>                           </Value>                           <Nodes>                             <DescriptorNode Key="USBDescriptor1169">                               <Value d16p1:type="CyASEndpointDescriptor" xmlns:d16p1="http://www.w3.org/2001/XMLSchema-instance">                                 <bDescriptorType>CS_ENDPOINT</bDescriptorType>                                 <bLength>7</bLength>                                 <bDescriptorSubtype>EP_GENERAL</bDescriptorSubtype>                                 <bmAttributes>128</bmAttributes>                                 <bLockDelayUnits>1</bLockDelayUnits>                               </Value>                               <Nodes />                             </DescriptorNode>                           </Nodes>                         </DescriptorNode>                       </Nodes>                     </DescriptorNode>                   </Nodes>                 </DescriptorNode>                 <DescriptorNode Key="Interface1170">                   <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">                     <bDescriptorType>ALTERNATE</bDescriptorType>                     <bLength>0</bLength>                     <DisplayName>B96 Transmit</DisplayName>                   </Value>                   <Nodes>                     <DescriptorNode Key="USBDescriptor1171">                       <Value d12p1:type="CyAudioInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">                         <bDescriptorType>INTERFACE</bDescriptorType>                         <bLength>9</bLength>                         <iwInterface>251</iwInterface>                         <bInterfaceClass>1</bInterfaceClass>                         <bInterfaceNumber>3</bInterfaceNumber>                         <bNumEndpoints>0</bNumEndpoints>                         <bInterfaceSubClass>2</bInterfaceSubClass>                         <bInterfaceProtocol>0</bInterfaceProtocol>                         <iInterface>4</iInterface>                         <sInterface>Peaberry Transmit</sInterface>                       </Value>                       <Nodes />                     </DescriptorNode>                     <DescriptorNode Key="USBDescriptor1176">                       <Value d12p1:type="CyAudioInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">                         <bDescriptorType>INTERFACE</bDescriptorType>                         <bLength>9</bLength>                         <iwInterface>251</iwInterface>                         <bInterfaceClass>1</bInterfaceClass>                         <bAlternateSetting>1</bAlternateSetting>                         <bInterfaceNumber>3</bInterfaceNumber>                         <bNumEndpoints>1</bNumEndpoints>                         <bInterfaceSubClass>2</bInterfaceSubClass>                         <bInterfaceProtocol>0</bInterfaceProtocol>                         <iInterface>4</iInterface>                         <sInterface>Peaberry Transmit</sInterface>                       </Value>                       <Nodes>                         <DescriptorNode Key="USBDescriptor1178">                           <Value d14p1:type="CyASGeneralDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>7</bLength>                             <bDescriptorSubtype>AS_GENERAL</bDescriptorSubtype>                             <bTerminalLink>3</bTerminalLink>                             <bDelay>1</bDelay>                             <wFormatTag>1</wFormatTag>                           </Value>                           <Nodes />                         </DescriptorNode>                         <DescriptorNode Key="USBDescriptor1179">                           <Value d14p1:type="CyASFormatType1Descriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>AUDIO</bDescriptorType>                             <bLength>11</bLength>                             <bDescriptorSubtype>FORMAT_TYPE</bDescriptorSubtype>                             <bFormatType>FORMAT_TYPE_1</bFormatType>                             <bSamFreqType>1</bSamFreqType>                             <tSamFreq>                               <unsignedInt>96000</unsignedInt>                             </tSamFreq>                             <bNrChannels>2</bNrChannels>                             <bSubframeSize>2</bSubframeSize>                             <bBitResolution>16</bBitResolution>                           </Value>                           <Nodes />                         </DescriptorNode>                         <DescriptorNode Key="USBDescriptor1180">                           <Value d14p1:type="CyAudioEndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">                             <bDescriptorType>ENDPOINT</bDescriptorType>                             <bLength>9</bLength>                             <DoubleBuffer>false</DoubleBuffer>                             <bInterval>1</bInterval>                             <bEndpointAddress>3</bEndpointAddress>                             <bmAttributes>45</bmAttributes>                             <wMaxPacketSize>384</wMaxPacketSize>                           </Value>                           <Nodes>                             <DescriptorNode Key="USBDescriptor1181">                               <Value d16p1:type="CyASEndpointDescriptor" xmlns:d16p1="http://www.w3.org/2001/XMLSchema-instance">                                 <bDescriptorType>CS_ENDPOINT</bDescriptorType>                                 <bLength>7</bLength>                                 <bDescriptorSubtype>EP_GENERAL</bDescriptorSubtype>                                 <bmAttributes>128</bmAttributes>                                 <bLockDelayUnits>1</bLockDelayUnits>                               </Value>                               <Nodes />                             </DescriptorNode>                           </Nodes>                         </DescriptorNode>                       </Nodes>                     </DescriptorNode>                   </Nodes>                 </DescriptorNode>               </Nodes>             </DescriptorNode>           </Nodes>         </DescriptorNode>       </Nodes>     </DescriptorNode>   </Tree_x0020_Descriptors> </Tree>, EnableCDCApi=false, EnableMidiApi=false, endpointMA=0, endpointMM=2, epDMAautoOptimization=false, extern_cls=false, extern_vbus=false, extern_vnd=true, extJackCount=0, HIDReportDescriptors=<?xml version="1.0" encoding="utf-16"?> <Tree xmlns:CustomizerVersion="2_50">   <Tree_x0020_Descriptors>     <DescriptorNode Key="HIDReport">       <Nodes />     </DescriptorNode>   </Tree_x0020_Descriptors> </Tree>, max_interfaces_num=4, MidiDescriptors=<?xml version="1.0" encoding="utf-16"?> <Tree xmlns:CustomizerVersion="2_50">   <Tree_x0020_Descriptors>     <DescriptorNode Key="Midi">       <Nodes />     </DescriptorNode>   </Tree_x0020_Descriptors> </Tree>, Mode=false, mon_vbus=true, out_sof=true, Pid=F232, rm_arb_int=false, rm_dma_1=true, rm_dma_2=false, rm_dma_3=false, rm_dma_4=true, rm_dma_5=true, rm_dma_6=true, rm_dma_7=true, rm_dma_8=true, rm_dp_int=false, rm_ep_isr_0=false, rm_ep_isr_1=true, rm_ep_isr_2=false, rm_ep_isr_3=false, rm_ep_isr_4=true, rm_ep_isr_5=true, rm_ep_isr_6=true, rm_ep_isr_7=true, rm_ep_isr_8=true, rm_ord_int=true, rm_sof_int=false, rm_usb_int=false, StringDescriptors=<?xml version="1.0" encoding="utf-16"?> <Tree xmlns:CustomizerVersion="2_50">   <Tree_x0020_Descriptors>     <DescriptorNode Key="String">       <Nodes>         <DescriptorNode Key="LANGID">           <Value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>4</bLength>             <wLANGID>1033</wLANGID>           </Value>           <Nodes />         </DescriptorNode>         <DescriptorNode Key="USBDescriptor187">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>12</bLength>             <snType>USER_ENTERED_TEXT</snType>             <bString>AE9RB</bString>             <bUsed>false</bUsed>           </Value>           <Nodes />         </DescriptorNode>         <DescriptorNode Key="USBDescriptor188">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>26</bLength>             <snType>USER_ENTERED_TEXT</snType>             <bString>Peaberry SDR</bString>             <bUsed>false</bUsed>           </Value>           <Nodes />         </DescriptorNode>         <DescriptorNode Key="USBDescriptor242">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>34</bLength>             <snType>USER_ENTERED_TEXT</snType>             <bString>Peaberry Receive</bString>             <bUsed>false</bUsed>           </Value>           <Nodes />         </DescriptorNode>         <DescriptorNode Key="USBDescriptor251">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>36</bLength>             <snType>USER_ENTERED_TEXT</snType>             <bString>Peaberry Transmit</bString>             <bUsed>false</bUsed>           </Value>           <Nodes />         </DescriptorNode>         <DescriptorNode Key="USBDescriptor336">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>30</bLength>             <snType>USER_ENTERED_TEXT</snType>             <bString>Peaberry Radio</bString>             <bUsed>false</bUsed>           </Value>           <Nodes />         </DescriptorNode>         <DescriptorNode Key="USBDescriptor1182">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>22</bLength>             <snType>USER_ENTERED_TEXT</snType>             <bString>DG8SAQ-I2C</bString>             <bUsed>false</bUsed>           </Value>           <Nodes />         </DescriptorNode>         <DescriptorNode Key="USBDescriptor1183">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>26</bLength>             <snType>USER_ENTERED_TEXT</snType>             <bString>www.obdev.at</bString>             <bUsed>false</bUsed>           </Value>           <Nodes />         </DescriptorNode>       </Nodes>     </DescriptorNode>     <DescriptorNode Key="SpecialString">       <Nodes>         <DescriptorNode Key="Serial">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>18</bLength>             <snType>SILICON_NUMBER</snType>             <bString>PE0FKO-0</bString>             <bUsed>true</bUsed>           </Value>           <Nodes />         </DescriptorNode>         <DescriptorNode Key="EE">           <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">             <bDescriptorType>STRING</bDescriptorType>             <bLength>16</bLength>             <snType>USER_ENTERED_TEXT</snType>             <bString>MSFT100</bString>             <bUsed>false</bUsed>           </Value>           <Nodes />         </DescriptorNode>       </Nodes>     </DescriptorNode>   </Tree_x0020_Descriptors> </Tree>, Vid=04B4, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=USBFS_v2_80, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=USBFS, CY_INSTANCE_SHORT_NAME=USBFS, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=80, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3, INSTANCE_NAME=USBFS, )
module USBFS_v2_80_0 (
    sof,
    vbusdet);
    output      sof;
    input       vbusdet;

    parameter epDMAautoOptimization = 0;

          wire  Net_1785;
          wire  Net_1771;
          wire  Net_1754;
          wire  Net_1753;
          wire [8:0] ept_int;
          wire  Net_1583;
          wire  Net_1582;
          wire  Net_1568;
          wire  Net_1561;
          wire  Net_1499;
          wire  Net_1494;
          wire [7:0] dma_req;
          wire [7:0] Net_1649;
          wire  Net_1648;
          wire  Net_1647;
          wire  Net_1646;
          wire  Net_1645;
          wire  Net_1643;
          wire  Net_1642;
          wire  Net_1730;
          wire  Net_1775;
          wire  Net_1599;
          wire  Net_1719;
          wire  Net_1718;
          wire  Net_1717;
          wire  Net_1716;
          wire  Net_1777;
          wire [7:0] dma_nrq;
          wire  Net_1715;
          wire  Net_1714;
          wire  Net_1713;
          wire  Net_1712;
          wire [7:0] Net_1208;
          wire  Net_1207;
          wire  Net_1206;
          wire  Net_1205;
          wire  Net_1204;
          wire  Net_1203;
          wire  Net_1201;
          wire  Net_1200;
          wire  Net_1199;
          wire  Net_1269;
          wire  Net_1202;
          wire  Net_1768;
          wire  Net_1591;
          wire [7:0] dma_nrq_sync;
          wire  Net_1588;
          wire  Net_1522;
          wire  Net_1579;
          wire  Net_1576;
          wire  Net_1567;
          wire  Net_1559;
          wire  Net_1498;
          wire  Net_1495;
          wire  Net_1010;
    electrical  Net_1000;
          wire  Net_824;
    electrical  Net_597;
          wire  Net_95;
          wire  Net_81;
          wire  Net_79;


	cy_clock_v1_0
		#(.id("cc5e29c8-ab2a-404e-a028-803a51429b48/03f503a7-085a-4304-b786-de885b1c2f21"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock_vbus
		 (.clock_out(Net_1202));



	cy_dma_v1_0
		#(.drq_type(2'b10))
		ep3
		 (.drq(dma_req[2:2]),
		  .trq(Net_824),
		  .nrq(Net_1559));


    CyStatusReg_v1_80 EP17_DMA_Done_SR (
        .status_0(1'b0),
        .status_1(1'b0),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(Net_1777),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_1768),
        .status_bus(dma_nrq_sync[6:0]));
    defparam EP17_DMA_Done_SR.Bit0Mode = 1;
    defparam EP17_DMA_Done_SR.Bit1Mode = 1;
    defparam EP17_DMA_Done_SR.Bit2Mode = 1;
    defparam EP17_DMA_Done_SR.Bit3Mode = 1;
    defparam EP17_DMA_Done_SR.Bit4Mode = 1;
    defparam EP17_DMA_Done_SR.Bit5Mode = 1;
    defparam EP17_DMA_Done_SR.Bit6Mode = 1;
    defparam EP17_DMA_Done_SR.Bit7Mode = 1;
    defparam EP17_DMA_Done_SR.BusDisplay = 1;
    defparam EP17_DMA_Done_SR.Interrupt = 1;
    defparam EP17_DMA_Done_SR.MaskValue = 127;
    defparam EP17_DMA_Done_SR.NumInputs = 7;


	cy_dma_v1_0
		#(.drq_type(2'b10))
		ep2
		 (.drq(dma_req[1:1]),
		  .trq(Net_824),
		  .nrq(Net_1498));



	cy_isr_v1_0
		#(.int_type(2'b10))
		dp_int
		 (.int_signal(Net_1010));


	wire [0:0] tmpOE__VBUS_net;
	wire [0:0] tmpFB_0__VBUS_net;
	wire [0:0] tmpIO_0__VBUS_net;
	wire [0:0] tmpINTERRUPT_0__VBUS_net;
	electrical [0:0] tmpSIOVREF__VBUS_net;

	cy_psoc3_pins_v1_10
		#(.id("cc5e29c8-ab2a-404e-a028-803a51429b48/605a40d2-572d-4c7a-818e-3bfd37f14d87"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		VBUS
		 (.oe(tmpOE__VBUS_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__VBUS_net[0:0]}),
		  .io({tmpIO_0__VBUS_net[0:0]}),
		  .siovref(tmpSIOVREF__VBUS_net),
		  .interrupt({tmpINTERRUPT_0__VBUS_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__VBUS_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Dm_net;
	wire [0:0] tmpFB_0__Dm_net;
	wire [0:0] tmpIO_0__Dm_net;
	wire [0:0] tmpINTERRUPT_0__Dm_net;
	electrical [0:0] tmpSIOVREF__Dm_net;

	cy_psoc3_pins_v1_10
		#(.id("cc5e29c8-ab2a-404e-a028-803a51429b48/8b77a6c4-10a0-4390-971c-672353e2a49c"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("NONCONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dm
		 (.oe(tmpOE__Dm_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dm_net[0:0]}),
		  .analog({Net_597}),
		  .io({tmpIO_0__Dm_net[0:0]}),
		  .siovref(tmpSIOVREF__Dm_net),
		  .interrupt({tmpINTERRUPT_0__Dm_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dm_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Dp_net;
	wire [0:0] tmpFB_0__Dp_net;
	wire [0:0] tmpIO_0__Dp_net;
	electrical [0:0] tmpSIOVREF__Dp_net;

	cy_psoc3_pins_v1_10
		#(.id("cc5e29c8-ab2a-404e-a028-803a51429b48/618a72fc-5ddd-4df5-958f-a3d55102db42"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b10),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dp
		 (.oe(tmpOE__Dp_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dp_net[0:0]}),
		  .analog({Net_1000}),
		  .io({tmpIO_0__Dp_net[0:0]}),
		  .siovref(tmpSIOVREF__Dp_net),
		  .interrupt({Net_1010}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dp_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_psoc3_usb_v1_0 USB (
        .dp(Net_1000),
        .dm(Net_597),
        .sof_int(sof),
        .arb_int(Net_79),
        .usb_int(Net_81),
        .ept_int(ept_int[8:0]),
        .ord_int(Net_95),
        .dma_req(dma_req[7:0]),
        .dma_termin(Net_824));


	cy_clock_v1_0
		#(.id("cc5e29c8-ab2a-404e-a028-803a51429b48/ab9d9ba5-fe73-4ff3-89a5-2fa6bac4333c"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock_vbus_1
		 (.clock_out(Net_1777));



	cy_clock_v1_0
		#(.id("cc5e29c8-ab2a-404e-a028-803a51429b48/36b2b569-7555-4c41-9a68-408766f82df3"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock_vbus_2
		 (.clock_out(Net_1775));



	cy_isr_v1_0
		#(.int_type(2'b10))
		EP_DMA_Done_isr
		 (.int_signal(Net_1522));


    CyStatusReg_v1_80 EP8_DMA_Done_SR (
        .status_0(Net_1768),
        .status_1(dma_nrq_sync[7]),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(Net_1775),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_1522),
        .status_bus(8'b0));
    defparam EP8_DMA_Done_SR.Bit0Mode = 1;
    defparam EP8_DMA_Done_SR.Bit1Mode = 1;
    defparam EP8_DMA_Done_SR.Bit2Mode = 1;
    defparam EP8_DMA_Done_SR.Bit3Mode = 1;
    defparam EP8_DMA_Done_SR.Bit4Mode = 1;
    defparam EP8_DMA_Done_SR.Bit5Mode = 1;
    defparam EP8_DMA_Done_SR.Bit6Mode = 1;
    defparam EP8_DMA_Done_SR.Bit7Mode = 1;
    defparam EP8_DMA_Done_SR.BusDisplay = 0;
    defparam EP8_DMA_Done_SR.Interrupt = 1;
    defparam EP8_DMA_Done_SR.MaskValue = 127;
    defparam EP8_DMA_Done_SR.NumInputs = 2;


	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_3
		 (.int_signal(ept_int[3:3]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_2
		 (.int_signal(ept_int[2:2]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_0
		 (.int_signal(ept_int[0:0]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		bus_reset
		 (.int_signal(Net_81));



	cy_isr_v1_0
		#(.int_type(2'b10))
		arb_int
		 (.int_signal(Net_79));



	cy_isr_v1_0
		#(.int_type(2'b10))
		sof_int
		 (.int_signal(sof));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign dma_nrq[0] = Net_1494;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_1494));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign dma_nrq[1] = Net_1498;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_1499));

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign dma_nrq[2] = Net_1559;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_1561));

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign dma_nrq[3] = Net_1568;

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_1568));

	// VirtualMux_5 (cy_virtualmux_v1_0)
	assign dma_nrq[4] = Net_1582;

	// VirtualMux_6 (cy_virtualmux_v1_0)
	assign dma_nrq[5] = Net_1583;

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_1582));

    ZeroTerminal ZeroTerminal_6 (
        .z(Net_1583));

	// VirtualMux_7 (cy_virtualmux_v1_0)
	assign dma_nrq[6] = Net_1753;

	// VirtualMux_8 (cy_virtualmux_v1_0)
	assign dma_nrq[7] = Net_1754;

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_1753));

    ZeroTerminal ZeroTerminal_8 (
        .z(Net_1754));

    cy_sync_v1_0 nrqSync (
        .s_in(dma_nrq[7:0]),
        .clock(Net_1771),
        .s_out(dma_nrq_sync[7:0]));
    defparam nrqSync.SignalWidth = 8;


	cy_clock_v1_0
		#(.id("cc5e29c8-ab2a-404e-a028-803a51429b48/05cf1099-aac9-4226-a133-1bc328368208"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock_vbus_3
		 (.clock_out(Net_1771));




endmodule

// Component: OneTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal\OneTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\OneTerminal\OneTerminal.v"
`endif

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// I2C_v3_50(Address_Decode=1, BusSpeed_kHz=400, ClockInputVisibility=false, CtlModeReplacementString=SyncCtl, EnableWakeup=false, ExternalBuffer=false, Externi2cIntrHandler=false, ExternTmoutIntrHandler=false, FF=true, Hex=false, I2C_Mode=2, I2cBusPort=0, Implementation=1, InternalUdbClockToleranceMinus=25, InternalUdbClockTolerancePlus=5, NotSlaveClockMinusTolerance=25, NotSlaveClockPlusTolerance=5, PrescalerEnabled=false, PrescalerPeriod=1, Psoc3ffSelected=true, Psoc5AffSelected=false, Psoc5lpffSelected=false, RemoveI2cff=false, RemoveI2cUdb=true, RemoveIntClock=true, RemoveTimeoutTimer=true, SclTimeoutEnabled=false, SdaTimeoutEnabled=false, Slave_Address=8, SlaveClockMinusTolerance=5, SlaveClockPlusTolerance=50, TimeoutEnabled=false, TimeoutImplementation=0, TimeOutms=25, TimeoutPeriodff=1563, TimeoutPeriodUdb=39999, UDB_MSTR=false, UDB_MULTI_MASTER_SLAVE=false, UDB_SLV=false, UdbInternalClock=true, UdbRequiredClock=6400, UdbSlaveFixedPlacementEnable=false, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=I2C_v3_50, CY_CONTROL_FILE=I2C_Slave_DefaultPlacement.ctl, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=I2C, CY_INSTANCE_SHORT_NAME=I2C, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=50, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3, INSTANCE_NAME=I2C, )
module I2C_v3_50_1 (
    sda_o,
    scl_o,
    sda_i,
    scl_i,
    iclk,
    bclk,
    reset,
    clock,
    scl,
    sda,
    itclk);
    output      sda_o;
    output      scl_o;
    input       sda_i;
    input       scl_i;
    output      iclk;
    output      bclk;
    input       reset;
    input       clock;
    inout       scl;
    inout       sda;
    output      itclk;


          wire  sda_x_wire;
          wire  Net_1191;
          wire  scl_yfb;
          wire  sda_yfb;
          wire  scl_x_wire;
          wire  bus_clk;
          wire  Net_1188;
          wire  Net_1187;
          wire  Net_1186;
          wire  Net_1185;
          wire  Net_1184;
          wire  udb_clk;
          wire  Net_1085;
          wire  timeout_clk;
          wire  Net_1084;
          wire  Net_697;
          wire  Net_1045;
          wire [1:0] Net_1109;
          wire [5:0] Net_643;

    cy_psoc3_i2c_v1_0 I2C_FF (
        .clock(bus_clk),
        .scl_in(Net_1109[0]),
        .sda_in(Net_1109[1]),
        .scl_out(Net_643[0]),
        .sda_out(Net_643[1]),
        .interrupt(Net_643[2]));
    defparam I2C_FF.use_wakeup = 0;

	wire [0:0] tmpOE__Bufoe_sda_net;

	cy_bufoe
		Bufoe_sda
		 (.x(sda_x_wire),
		  .y(sda),
		  .oe(tmpOE__Bufoe_sda_net),
		  .yfb(sda_yfb));

	assign tmpOE__Bufoe_sda_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{Net_1084} : {Net_1084};

	wire [0:0] tmpOE__Bufoe_scl_net;

	cy_bufoe
		Bufoe_scl
		 (.x(scl_x_wire),
		  .y(scl),
		  .oe(tmpOE__Bufoe_scl_net),
		  .yfb(scl_yfb));

	assign tmpOE__Bufoe_scl_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{Net_1085} : {Net_1085};


	cy_isr_v1_0
		#(.int_type(2'b00))
		I2C_IRQ
		 (.int_signal(Net_697));


    OneTerminal OneTerminal_2 (
        .o(Net_1084));

    OneTerminal OneTerminal_1 (
        .o(Net_1085));

	// Vmux_interrupt (cy_virtualmux_v1_0)
	assign Net_697 = Net_643[2];

	// Vmux_sda_out (cy_virtualmux_v1_0)
	assign sda_x_wire = Net_643[1];

	// Vmux_scl_out (cy_virtualmux_v1_0)
	assign scl_x_wire = Net_643[0];

	// Vmux_clock (cy_virtualmux_v1_0)
	assign udb_clk = Net_1184;


	cy_clock_v1_0
		#(.id("535af0d6-b9bc-418c-a267-f3b4d5ff5f5d/5ece924d-20ba-480e-9102-bc082dcdd926"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		BusClock
		 (.clock_out(bus_clk));



    assign bclk = bus_clk | Net_1187;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_1187));


    assign iclk = udb_clk | Net_1188;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_1188));

	// Vmux_scl_in (cy_virtualmux_v1_0)
	assign Net_1109[0] = scl_yfb;

	// Vmux_sda_in (cy_virtualmux_v1_0)
	assign Net_1109[1] = sda_yfb;

	// Vmux_timeout_clock (cy_virtualmux_v1_0)
	assign timeout_clk = clock;


    assign itclk = timeout_clk | Net_1191;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_1191));


    assign sda_o = sda_x_wire;

    assign scl_o = scl_x_wire;


endmodule

// Component: bI2S_v2_60
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\bI2S_v2_60"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\bI2S_v2_60\bI2S_v2_60.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\bI2S_v2_60"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\bI2S_v2_60\bI2S_v2_60.v"
`endif

// I2S_v2_60(ClipPresent=false, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, CommonClipThresholds=false, DataBits=24, Direction=3, EnableClipDetect=false, EnableRxByteSwap=false, EnableTxByteSwap=false, InterruptSource=0, NegThresholds=-64, -64, -64, -64, -64, NumRxChannels=2, NumRxLines=1, NumTxChannels=2, NumTxLines=1, PosThresholds=64u, 64u, 64u, 64u, 64u, RxDataInterleaved=true, RxDataInterleaving=1, RxDMA_present=1, RxDmaPresent=true, RxInterruptSource=0, RxStsReg0Present=true, RxStsReg1Present=false, RxStsReg2Present=false, StaticBitResolution=true, TermMode_clip=0, TermMode_clock=0, TermMode_rx_dma0=0, TermMode_rx_dma1=0, TermMode_rx_interrupt=0, TermMode_sck=0, TermMode_sdi=0, TermMode_sdo=0, TermMode_tx_dma0=0, TermMode_tx_dma1=0, TermMode_tx_interrupt=0, TermMode_ws=0, TermVisibility_clip=false, TermVisibility_clock=true, TermVisibility_rx_dma0=true, TermVisibility_rx_dma1=false, TermVisibility_rx_interrupt=true, TermVisibility_sck=true, TermVisibility_sdi=true, TermVisibility_sdo=true, TermVisibility_tx_dma0=true, TermVisibility_tx_dma1=false, TermVisibility_tx_interrupt=true, TermVisibility_ws=true, TxDataInterleaved=true, TxDataInterleaving=1, TxDMA_present=1, TxDmaPresent=true, TxInterruptSource=0, TxStsReg0Present=true, TxStsReg1Present=false, TxStsReg2Present=false, WordSelect=64, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=I2S_v2_60, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=I2S, CY_INSTANCE_SHORT_NAME=I2S, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=60, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3, INSTANCE_NAME=I2S, )
module I2S_v2_60_2 (
    clock,
    sdi,
    sck,
    ws,
    sdo,
    tx_interrupt,
    rx_dma0,
    rx_dma1,
    tx_dma0,
    tx_dma1,
    rx_interrupt,
    clip);
    input       clock;
    input      [4:0] sdi;
    output      sck;
    output      ws;
    output     [4:0] sdo;
    output      tx_interrupt;
    output     [4:0] rx_dma0;
    output     [4:0] rx_dma1;
    output     [4:0] tx_dma0;
    output     [4:0] tx_dma1;
    output      rx_interrupt;
    output     [4:0] clip;


          wire [4:0] tx_line;
          wire [4:0] tx_drq1;
          wire [4:0] rx_drq1;
          wire [4:0] tx_drq0;
          wire [4:0] rx_drq0;
          wire  Net_190;
          wire  Net_241;
          wire [4:0] rx_line;
          wire [4:0] clip_detect;
          wire [4:0] Net_1;
          wire  Net_235;
          wire  Net_229;
          wire  Net_2;
          wire  Net_232;
          wire  Net_223;
          wire  Net_25;

    bI2S_v2_60 bI2S (
        .sdi(Net_1[4:0]),
        .clock(Net_2),
        .sdo(tx_line[4:0]),
        .sck(sck),
        .ws(ws),
        .rx_interrupt(rx_interrupt),
        .tx_interrupt(tx_interrupt),
        .rx_dma0(rx_drq0[4:0]),
        .tx_dma0(tx_drq0[4:0]),
        .rx_dma1(rx_drq1[4:0]),
        .tx_dma1(tx_drq1[4:0]),
        .clip(clip_detect[4:0]));
    defparam bI2S.DataBits = 24;
    defparam bI2S.Direction = 3;
    defparam bI2S.EnableClipDetect = 0;
    defparam bI2S.EnableRxByteSwap = 0;
    defparam bI2S.EnableTxByteSwap = 0;
    defparam bI2S.NumRxChannels = 2;
    defparam bI2S.NumTxChannels = 2;
    defparam bI2S.RxDataInterleaving = 1;
    defparam bI2S.StaticBitResolution = 1;
    defparam bI2S.TxDataInterleaving = 1;
    defparam bI2S.WordSelect = 64;

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_2 = clock;

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign Net_1[0] = rx_line[0];

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign Net_1[1] = rx_line[1];

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign Net_1[2] = rx_line[2];

	// VirtualMux_5 (cy_virtualmux_v1_0)
	assign Net_1[3] = rx_line[3];

	// VirtualMux_6 (cy_virtualmux_v1_0)
	assign Net_1[4] = rx_line[4];


    assign rx_line[4:0] = sdi;

    assign sdo = tx_line[4:0];

    assign rx_dma0 = rx_drq0[4:0];

    assign rx_dma1 = rx_drq1[4:0];

    assign tx_dma0 = tx_drq0[4:0];

    assign tx_dma1 = tx_drq1[4:0];

    assign clip = clip_detect[4:0];


endmodule

// Component: CyStatusReg_v1_90
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_90"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_90\CyStatusReg_v1_90.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_90"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyStatusReg_v1_90\CyStatusReg_v1_90.v"
`endif

// Component: Debouncer_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\Debouncer_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\Debouncer_v1_0\Debouncer_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\Debouncer_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\Debouncer_v1_0\Debouncer_v1_0.v"
`endif

// Component: FracN
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\FracN"
`include "J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\FracN\FracN.v"
`else
`define CY_BLK_DIR "J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\FracN"
`include "J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\FracN\FracN.v"
`endif

// Component: CyControlReg_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`endif

// Component: SyncSOF
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\SyncSOF"
`include "J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\SyncSOF\SyncSOF.v"
`else
`define CY_BLK_DIR "J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\SyncSOF"
`include "J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\SyncSOF\SyncSOF.v"
`endif

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// Component: cy_tff_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_tff_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_tff_v1_0\cy_tff_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_tff_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_tff_v1_0\cy_tff_v1_0.v"
`endif

// Timer_v2_70(CaptureAlternatingFall=false, CaptureAlternatingRise=false, CaptureCount=2, CaptureCounterEnabled=false, CaptureInputEnabled=false, CaptureMode=0, CONTROL3=1, ControlRegRemoved=0, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeviceFamily=PSoC3, EnableMode=0, FF16=true, FF8=false, FixedFunction=true, FixedFunctionUsed=1, HWCaptureCounterEnabled=false, InterruptOnCapture=false, InterruptOnFIFOFull=false, InterruptOnTC=true, IntOnCapture=0, IntOnFIFOFull=0, IntOnTC=1, NumberOfCaptures=1, param45=1, Period=50000, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=rstSts, RunMode=1, SiliconRevision=3, SoftwareCaptureModeEnabled=false, SoftwareTriggerModeEnabled=false, TriggerInputEnabled=false, TriggerMode=0, UDB16=false, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=false, UsesHWEnable=0, VerilogSectionReplacementString=sT16, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=Timer_v2_70, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=CW_Hold_Timer, CY_INSTANCE_SHORT_NAME=CW_Hold_Timer, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=70, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3, INSTANCE_NAME=CW_Hold_Timer, )
module Timer_v2_70_3 (
    clock,
    reset,
    interrupt,
    enable,
    capture,
    trigger,
    capture_out,
    tc);
    input       clock;
    input       reset;
    output      interrupt;
    input       enable;
    input       capture;
    input       trigger;
    output      capture_out;
    output      tc;

    parameter CaptureCount = 2;
    parameter CaptureCounterEnabled = 0;
    parameter DeviceFamily = "PSoC3";
    parameter InterruptOnCapture = 0;
    parameter InterruptOnTC = 1;
    parameter Resolution = 16;
    parameter SiliconRevision = "3";

          wire  Net_261;
          wire  Net_260;
          wire  Net_266;
          wire  Net_102;
          wire  Net_55;
          wire  Net_57;
          wire  Net_53;
          wire  Net_51;

    cy_psoc3_timer_v1_0 TimerHW (
        .timer_reset(reset),
        .capture(capture),
        .enable(Net_266),
        .kill(Net_260),
        .clock(clock),
        .tc(Net_51),
        .compare(Net_261),
        .interrupt(Net_57));

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_260));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign interrupt = Net_57;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign tc = Net_51;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_266 = Net_102;



endmodule

// Component: B_Counter_v3_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Counter_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Counter_v3_0\B_Counter_v3_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Counter_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_Counter_v3_0\B_Counter_v3_0.v"
`endif

// Counter_v3_0(CaptureMode=0, CaptureModeSoftware=0, ClockMode=0, CompareMode=0, CompareModeSoftware=0, CompareStatusEdgeSense=true, CompareValue=4294967295, CONTROL3=0, ControlRegRemoved=0, CyGetRegReplacementString=CY_GET_REG32, CySetRegReplacementString=CY_SET_REG32, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InitCounterValue=0, InterruptOnCapture=false, InterruptOnCompare=false, InterruptOnOverUnderFlow=true, InterruptOnTC=false, Period=4294967295, RegDefReplacementString=reg32, RegSizeReplacementString=uint32, ReloadOnCapture=false, ReloadOnCompare=false, ReloadOnOverUnder=true, ReloadOnReset=false, Resolution=32, RunMode=0, UDB16=false, UDB24=false, UDB32=true, UDB8=false, UDBControlReg=true, UseInterrupt=true, VerilogSectionReplacementString=sC32, CY_API_CALLBACK_HEADER_INCLUDE=, CY_COMPONENT_NAME=Counter_v3_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Iambic_Counter, CY_INSTANCE_SHORT_NAME=Iambic_Counter, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3, INSTANCE_NAME=Iambic_Counter, )
module Counter_v3_0_4 (
    clock,
    comp,
    tc,
    reset,
    interrupt,
    enable,
    capture,
    upCnt,
    downCnt,
    up_ndown,
    count);
    input       clock;
    output      comp;
    output      tc;
    input       reset;
    output      interrupt;
    input       enable;
    input       capture;
    input       upCnt;
    input       downCnt;
    input       up_ndown;
    input       count;

    parameter CaptureMode = 0;
    parameter ClockMode = 0;
    parameter CompareMode = 0;
    parameter CompareStatusEdgeSense = 1;
    parameter EnableMode = 0;
    parameter ReloadOnCapture = 0;
    parameter ReloadOnCompare = 0;
    parameter ReloadOnOverUnder = 1;
    parameter ReloadOnReset = 0;
    parameter Resolution = 32;
    parameter RunMode = 0;
    parameter UseInterrupt = 1;

          wire  Net_54;
          wire  Net_102;
          wire  Net_95;
          wire  Net_82;
          wire  Net_91;
          wire  Net_89;
          wire  Net_49;
          wire  Net_48;
          wire  Net_42;
          wire  Net_43;

	// int_vm (cy_virtualmux_v1_0)
	assign interrupt = Net_43;

	// TC_vm (cy_virtualmux_v1_0)
	assign tc = Net_49;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_82));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_89 = up_ndown;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_95));

	// vmEnableMode (cy_virtualmux_v1_0)
	assign Net_91 = enable;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

    B_Counter_v3_0 CounterUDB (
        .reset(reset),
        .tc_out(Net_49),
        .cmp_out(comp),
        .clock(clock),
        .irq_out(Net_43),
        .up_ndown(Net_89),
        .upcnt(upCnt),
        .dwncnt(downCnt),
        .enable(enable),
        .capture(capture),
        .count(count));
    defparam CounterUDB.CaptureMode = 0;
    defparam CounterUDB.ClockMode = 0;
    defparam CounterUDB.CompareMode = 0;
    defparam CounterUDB.CompareStatusEdgeSense = 1;
    defparam CounterUDB.EnableMode = 0;
    defparam CounterUDB.ReloadOnCapture = 0;
    defparam CounterUDB.ReloadOnCompare = 0;
    defparam CounterUDB.ReloadOnOverUnder = 1;
    defparam CounterUDB.ReloadOnReset = 0;
    defparam CounterUDB.Resolution = 32;
    defparam CounterUDB.RunMode = 0;
    defparam CounterUDB.UseInterrupt = 1;



endmodule

// top
module top ;

          wire  Net_8904;
          wire  Net_8917;
          wire  Net_8933;
          wire  Net_8932;
          wire  Net_8931;
          wire  Net_8930;
          wire  Net_8929;
          wire  Net_8928;
          wire  Net_8927;
          wire  Net_8926;
          wire  Net_8915;
          wire  Net_8925;
          wire  Net_8939;
          wire  Net_8938;
          wire  Net_8937;
          wire  Net_8936;
          wire  Net_8935;
          wire  Net_8934;
          wire  Net_8950;
          wire  Net_8949;
          wire  Net_8947;
          wire  Net_8946;
          wire  Net_8945;
          wire  Net_8944;
          wire  Net_8943;
          wire  Net_8942;
          wire  Net_8941;
          wire  Net_8948;
          wire  Net_9003;
          wire  Net_7690;
          wire  Net_7616;
          wire  Net_7629;
          wire  Net_7628;
          wire  Net_7801;
          wire  Net_7612;
          wire  Net_7611;
          wire  Net_7610;
          wire  Net_7608;
          wire  Net_7607;
          wire  Net_7265;
          wire  Net_8998;
          wire  Net_8997;
          wire  Net_8996;
          wire  Net_7601;
          wire  Net_3640;
          wire  Net_7599;
          wire  Net_7603;
          wire  Net_7596;
          wire  Net_8989;
          wire  Net_8988;
          wire  Net_8987;
          wire [7:0] Net_8967;
          wire  Net_8966;
          wire  Net_8965;
          wire  Net_8964;
          wire  Net_8963;
          wire  Net_7267;
          wire  Net_7597;
          wire  Net_7585;
          wire [0:0] Net_8305;
          wire  Net_7584;
          wire  Net_7583;
          wire [0:0] Net_8304;
          wire [0:0] Net_8303;
          wire  Net_7580;
          wire  Net_7579;
          wire  Net_7578;
          wire  Net_7577;
          wire  Net_7576;
          wire  Net_7575;
          wire  Net_7574;
          wire  Net_7573;
          wire  Net_7572;
          wire  Net_7571;
          wire  Net_7570;
          wire  Net_7569;
          wire  Net_7568;
          wire  Net_7722;
          wire  Net_8984;
          wire  Net_8153;
          wire  Key_wire_1;
          wire  Net_9004;
          wire  Net_7589;
          wire  Net_8985;
          wire  Net_8968;
          wire  Net_217;
          wire  Net_206;
          wire  Net_8919;
          wire  Net_8914;
          wire  Net_8975;
          wire  Net_7567;
          wire  Net_8751;
          wire  Net_8748;
          wire  Net_12;
          wire  Key_wire_0;
          wire  Net_8259;
          wire  Net_7707;
          wire  Net_7699;
          wire  Net_7872;
          wire  Net_7800;
          wire [0:0] Net_4292;
          wire  Net_7604;
          wire  Net_3836;
          wire  Net_7639;
          wire  Net_7720;
          wire  Net_6748;
          wire [0:0] Net_6655;
          wire [0:0] Net_4293;

    USBFS_v2_80_0 USBFS (
        .sof(Net_7567),
        .vbusdet(1'b0));
    defparam USBFS.epDMAautoOptimization = 0;

    I2C_v3_50_1 I2C (
        .sda(Net_7568),
        .scl(Net_7569),
        .clock(1'b0),
        .reset(1'b0),
        .bclk(Net_7572),
        .iclk(Net_7573),
        .scl_i(1'b0),
        .sda_i(1'b0),
        .scl_o(Net_7576),
        .sda_o(Net_7577),
        .itclk(Net_7578));

	wire [0:0] tmpOE__LRCK1_net;
	wire [0:0] tmpFB_0__LRCK1_net;
	wire [0:0] tmpIO_0__LRCK1_net;
	wire [0:0] tmpINTERRUPT_0__LRCK1_net;
	electrical [0:0] tmpSIOVREF__LRCK1_net;

	cy_psoc3_pins_v1_10
		#(.id("0412e7a3-7bb2-4490-8a7d-0675b098c5ba"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LRCK1
		 (.oe(tmpOE__LRCK1_net),
		  .y({Net_6748}),
		  .fb({tmpFB_0__LRCK1_net[0:0]}),
		  .io({tmpIO_0__LRCK1_net[0:0]}),
		  .siovref(tmpSIOVREF__LRCK1_net),
		  .interrupt({tmpINTERRUPT_0__LRCK1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LRCK1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__BCK1_net;
	wire [0:0] tmpFB_0__BCK1_net;
	wire [0:0] tmpIO_0__BCK1_net;
	wire [0:0] tmpINTERRUPT_0__BCK1_net;
	electrical [0:0] tmpSIOVREF__BCK1_net;

	cy_psoc3_pins_v1_10
		#(.id("c8e19693-67d9-4f29-a02f-cee5400c223a"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		BCK1
		 (.oe(tmpOE__BCK1_net),
		  .y({Net_7720}),
		  .fb({tmpFB_0__BCK1_net[0:0]}),
		  .io({tmpIO_0__BCK1_net[0:0]}),
		  .siovref(tmpSIOVREF__BCK1_net),
		  .interrupt({tmpINTERRUPT_0__BCK1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__BCK1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__DOUT_net;
	wire [0:0] tmpIO_0__DOUT_net;
	wire [0:0] tmpINTERRUPT_0__DOUT_net;
	electrical [0:0] tmpSIOVREF__DOUT_net;

	cy_psoc3_pins_v1_10
		#(.id("ed092b9b-d398-4703-be89-cebf998501f6"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		DOUT
		 (.oe(tmpOE__DOUT_net),
		  .y({1'b0}),
		  .fb({Net_7579}),
		  .io({tmpIO_0__DOUT_net[0:0]}),
		  .siovref(tmpSIOVREF__DOUT_net),
		  .interrupt({tmpINTERRUPT_0__DOUT_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__DOUT_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__SCL_net;
	wire [0:0] tmpFB_0__SCL_net;
	wire [0:0] tmpINTERRUPT_0__SCL_net;
	electrical [0:0] tmpSIOVREF__SCL_net;

	cy_psoc3_pins_v1_10
		#(.id("3dc7f02c-beae-4363-8d62-5cfea396508c"),
		  .drive_mode(3'b100),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("B"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SCL
		 (.oe(tmpOE__SCL_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__SCL_net[0:0]}),
		  .io({Net_7569}),
		  .siovref(tmpSIOVREF__SCL_net),
		  .interrupt({tmpINTERRUPT_0__SCL_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SCL_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__SDA_net;
	wire [0:0] tmpFB_0__SDA_net;
	wire [0:0] tmpINTERRUPT_0__SDA_net;
	electrical [0:0] tmpSIOVREF__SDA_net;

	cy_psoc3_pins_v1_10
		#(.id("22863ebe-a37b-476f-b252-6e49a8c00b12"),
		  .drive_mode(3'b100),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("B"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SDA
		 (.oe(tmpOE__SDA_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__SDA_net[0:0]}),
		  .io({Net_7568}),
		  .siovref(tmpSIOVREF__SDA_net),
		  .interrupt({tmpINTERRUPT_0__SDA_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SDA_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    I2S_v2_60_2 I2S (
        .clock(Net_7580),
        .sdi(Net_7579),
        .sck(Net_7720),
        .ws(Net_6748),
        .sdo(Net_6655[0:0]),
        .rx_dma0(Net_4293[0:0]),
        .rx_dma1(Net_8303[0:0]),
        .tx_dma0(Net_4292[0:0]),
        .tx_dma1(Net_8304[0:0]),
        .rx_interrupt(Net_7583),
        .tx_interrupt(Net_7584),
        .clip(Net_8305[0:0]));

	wire [0:0] tmpOE__DIN_net;
	wire [0:0] tmpFB_0__DIN_net;
	wire [0:0] tmpIO_0__DIN_net;
	wire [0:0] tmpINTERRUPT_0__DIN_net;
	electrical [0:0] tmpSIOVREF__DIN_net;

	cy_psoc3_pins_v1_10
		#(.id("1425177d-0d0e-4468-8bcc-e638e5509a9b"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		DIN
		 (.oe(tmpOE__DIN_net),
		  .y({Net_6655[0:0]}),
		  .fb({tmpFB_0__DIN_net[0:0]}),
		  .io({tmpIO_0__DIN_net[0:0]}),
		  .siovref(tmpSIOVREF__DIN_net),
		  .interrupt({tmpINTERRUPT_0__DIN_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__DIN_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__BCK2_net;
	wire [0:0] tmpFB_0__BCK2_net;
	wire [0:0] tmpIO_0__BCK2_net;
	wire [0:0] tmpINTERRUPT_0__BCK2_net;
	electrical [0:0] tmpSIOVREF__BCK2_net;

	cy_psoc3_pins_v1_10
		#(.id("36abfd5d-4ca8-47ef-bb79-df928d3de44f"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		BCK2
		 (.oe(tmpOE__BCK2_net),
		  .y({Net_7720}),
		  .fb({tmpFB_0__BCK2_net[0:0]}),
		  .io({tmpIO_0__BCK2_net[0:0]}),
		  .siovref(tmpSIOVREF__BCK2_net),
		  .interrupt({tmpINTERRUPT_0__BCK2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__BCK2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("b5b8d0ae-102c-448a-8fe8-cb372dce7657"),
		  .source_clock_id("61737EF6-3B74-48f9-8B91-F7473A442AE7"),
		  .divisor(3),
		  .period("0"),
		  .is_direct(0),
		  .is_digital(1))
		I2S_CLK
		 (.clock_out(Net_7580));


	wire [0:0] tmpOE__ATU_0_net;
	wire [0:0] tmpIO_0__ATU_0_net;
	wire [0:0] tmpINTERRUPT_0__ATU_0_net;
	electrical [0:0] tmpSIOVREF__ATU_0_net;

	cy_psoc3_pins_v1_10
		#(.id("5c1decb5-69e3-4a8d-bb0c-281221d15217"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b1),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("B"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		ATU_0
		 (.oe(tmpOE__ATU_0_net),
		  .y({Net_7699}),
		  .fb({Net_8968}),
		  .io({tmpIO_0__ATU_0_net[0:0]}),
		  .siovref(tmpSIOVREF__ATU_0_net),
		  .interrupt({tmpINTERRUPT_0__ATU_0_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__ATU_0_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{Net_7707} : {Net_7707};

	wire [0:0] tmpOE__LRCK2_net;
	wire [0:0] tmpFB_0__LRCK2_net;
	wire [0:0] tmpIO_0__LRCK2_net;
	wire [0:0] tmpINTERRUPT_0__LRCK2_net;
	electrical [0:0] tmpSIOVREF__LRCK2_net;

	cy_psoc3_pins_v1_10
		#(.id("0b0bdb19-3de0-4c34-a7bb-170fbad6bf2d"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LRCK2
		 (.oe(tmpOE__LRCK2_net),
		  .y({Net_6748}),
		  .fb({tmpFB_0__LRCK2_net[0:0]}),
		  .io({tmpIO_0__LRCK2_net[0:0]}),
		  .siovref(tmpSIOVREF__LRCK2_net),
		  .interrupt({tmpINTERRUPT_0__LRCK2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LRCK2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__RX_net;
	wire [0:0] tmpFB_0__RX_net;
	wire [0:0] tmpIO_0__RX_net;
	wire [0:0] tmpINTERRUPT_0__RX_net;
	electrical [0:0] tmpSIOVREF__RX_net;

	cy_psoc3_pins_v1_10
		#(.id("58c485df-ae6f-4453-8ee1-9f2b17650e2f"),
		  .drive_mode(3'b010),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b1),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		RX
		 (.oe(tmpOE__RX_net),
		  .y({Net_7597}),
		  .fb({tmpFB_0__RX_net[0:0]}),
		  .io({tmpIO_0__RX_net[0:0]}),
		  .siovref(tmpSIOVREF__RX_net),
		  .interrupt({tmpINTERRUPT_0__RX_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__RX_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__SCK2_net;
	wire [0:0] tmpFB_0__SCK2_net;
	wire [0:0] tmpIO_0__SCK2_net;
	wire [0:0] tmpINTERRUPT_0__SCK2_net;
	electrical [0:0] tmpSIOVREF__SCK2_net;

	cy_psoc3_pins_v1_10
		#(.id("1d03375a-0d73-4b00-946e-a3652c93e928"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SCK2
		 (.oe(tmpOE__SCK2_net),
		  .y({Net_8975}),
		  .fb({tmpFB_0__SCK2_net[0:0]}),
		  .io({tmpIO_0__SCK2_net[0:0]}),
		  .siovref(tmpSIOVREF__SCK2_net),
		  .interrupt({tmpINTERRUPT_0__SCK2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SCK2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__TX_net;
	wire [0:0] tmpFB_0__TX_net;
	wire [0:0] tmpIO_0__TX_net;
	wire [0:0] tmpINTERRUPT_0__TX_net;
	electrical [0:0] tmpSIOVREF__TX_net;

	cy_psoc3_pins_v1_10
		#(.id("ee9c2b5c-be99-4aff-be2a-90912fe4cf4f"),
		  .drive_mode(3'b010),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b1),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		TX
		 (.oe(tmpOE__TX_net),
		  .y({Net_7267}),
		  .fb({tmpFB_0__TX_net[0:0]}),
		  .io({tmpIO_0__TX_net[0:0]}),
		  .siovref(tmpSIOVREF__TX_net),
		  .interrupt({tmpINTERRUPT_0__TX_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__TX_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    CyStatusReg_v1_90 Status (
        .status_0(Key_wire_0),
        .status_1(Key_wire_1),
        .status_2(Net_7589),
        .status_3(Net_9004),
        .clock(Net_8975),
        .status_4(Net_8968),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_8966),
        .status_bus(8'b0));
    defparam Status.Bit0Mode = 0;
    defparam Status.Bit1Mode = 0;
    defparam Status.Bit2Mode = 0;
    defparam Status.Bit3Mode = 0;
    defparam Status.Bit4Mode = 0;
    defparam Status.Bit5Mode = 0;
    defparam Status.Bit6Mode = 1;
    defparam Status.Bit7Mode = 0;
    defparam Status.BusDisplay = 0;
    defparam Status.Interrupt = 0;
    defparam Status.MaskValue = 0;
    defparam Status.NumInputs = 5;

    Debouncer_v1_0 Debouncer_1 (
        .d(Net_8153),
        .clock(Net_8985),
        .q(Key_wire_0),
        .neg(Net_8987),
        .either(Net_8988),
        .pos(Net_8989));
    defparam Debouncer_1.EitherEdgeDetect = 0;
    defparam Debouncer_1.NegEdgeDetect = 0;
    defparam Debouncer_1.PosEdgeDetect = 0;
    defparam Debouncer_1.SignalWidth = 1;

	wire [0:0] tmpOE__SCK1_net;
	wire [0:0] tmpFB_0__SCK1_net;
	wire [0:0] tmpIO_0__SCK1_net;
	wire [0:0] tmpINTERRUPT_0__SCK1_net;
	electrical [0:0] tmpSIOVREF__SCK1_net;

	cy_psoc3_pins_v1_10
		#(.id("d276195d-2de4-4806-9b99-7fb377f87845"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SCK1
		 (.oe(tmpOE__SCK1_net),
		  .y({Net_8975}),
		  .fb({tmpFB_0__SCK1_net[0:0]}),
		  .io({tmpIO_0__SCK1_net[0:0]}),
		  .siovref(tmpSIOVREF__SCK1_net),
		  .interrupt({tmpINTERRUPT_0__SCK1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SCK1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("ed34a742-cd25-46de-bf6a-82c628887029"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		My_BUS_CLK
		 (.clock_out(Net_8975));


	wire [0:0] tmpOE__XK_net;
	wire [0:0] tmpFB_0__XK_net;
	wire [0:0] tmpIO_0__XK_net;
	wire [0:0] tmpINTERRUPT_0__XK_net;
	electrical [0:0] tmpSIOVREF__XK_net;

	cy_psoc3_pins_v1_10
		#(.id("92babf0e-f0e6-4167-ad5c-7803b12fdafe"),
		  .drive_mode(3'b100),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(1),
		  .sio_hyst(1'b1),
		  .sio_ibuf(1'b0),
		  .sio_info(2'b01),
		  .sio_obuf(1'b0),
		  .sio_refsel(1'b0),
		  .sio_vtrip(1'b1),
		  .slew_rate(1'b1),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b1),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		XK
		 (.oe(tmpOE__XK_net),
		  .y({Net_7603}),
		  .fb({tmpFB_0__XK_net[0:0]}),
		  .io({tmpIO_0__XK_net[0:0]}),
		  .siovref(tmpSIOVREF__XK_net),
		  .interrupt({tmpINTERRUPT_0__XK_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__XK_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    FracN FracN (
        .clk(Net_7639));


	cy_dma_v1_0
		#(.drq_type(2'b00))
		RxI2S_Buff
		 (.drq(Net_3836),
		  .trq(1'b0),
		  .nrq(Net_3640));



	cy_dma_v1_0
		#(.drq_type(2'b01))
		RxI2S_Stage
		 (.drq(Net_4293[0:0]),
		  .trq(1'b0),
		  .nrq(Net_3836));


    Debouncer_v1_0 Debouncer_2 (
        .d(Net_8984),
        .clock(Net_8985),
        .q(Key_wire_1),
        .neg(Net_8996),
        .either(Net_8997),
        .pos(Net_8998));
    defparam Debouncer_2.EitherEdgeDetect = 0;
    defparam Debouncer_2.NegEdgeDetect = 0;
    defparam Debouncer_2.PosEdgeDetect = 0;
    defparam Debouncer_2.SignalWidth = 1;

    CyControlReg_v1_80 Control (
        .control_1(Net_7597),
        .control_2(Net_7267),
        .control_3(Net_7265),
        .control_0(Net_7604),
        .control_4(Net_7603),
        .control_5(Net_7699),
        .control_6(Net_7707),
        .control_7(Net_8259),
        .clock(1'b0),
        .reset(1'b0));
    defparam Control.Bit0Mode = 0;
    defparam Control.Bit1Mode = 0;
    defparam Control.Bit2Mode = 0;
    defparam Control.Bit3Mode = 0;
    defparam Control.Bit4Mode = 0;
    defparam Control.Bit5Mode = 0;
    defparam Control.Bit6Mode = 0;
    defparam Control.Bit7Mode = 0;
    defparam Control.BitValue = 27;
    defparam Control.BusDisplay = 0;
    defparam Control.ExtrReset = 0;
    defparam Control.NumOutputs = 8;

    SyncSOF SyncSOF (
        .sof(Net_7567),
        .sod(Net_7872),
        .clock(Net_8975));


	cy_dma_v1_0
		#(.drq_type(2'b00))
		TxI2S_Buff
		 (.drq(Net_7800),
		  .trq(1'b0),
		  .nrq(Net_7872));



	cy_dma_v1_0
		#(.drq_type(2'b01))
		TxI2S_Stage
		 (.drq(Net_4292[0:0]),
		  .trq(1'b0),
		  .nrq(Net_7800));


	wire [0:0] tmpOE__ATU_1_net;
	wire [0:0] tmpFB_0__ATU_1_net;
	wire [0:0] tmpIO_0__ATU_1_net;
	wire [0:0] tmpINTERRUPT_0__ATU_1_net;
	electrical [0:0] tmpSIOVREF__ATU_1_net;

	cy_psoc3_pins_v1_10
		#(.id("52f31aa9-2f0a-497d-9a1f-1424095e13e6"),
		  .drive_mode(3'b010),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		ATU_1
		 (.oe(tmpOE__ATU_1_net),
		  .y({Net_8259}),
		  .fb({tmpFB_0__ATU_1_net[0:0]}),
		  .io({tmpIO_0__ATU_1_net[0:0]}),
		  .siovref(tmpSIOVREF__ATU_1_net),
		  .interrupt({tmpINTERRUPT_0__ATU_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__ATU_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__BOOT_net;
	wire [0:0] tmpIO_0__BOOT_net;
	wire [0:0] tmpINTERRUPT_0__BOOT_net;
	electrical [0:0] tmpSIOVREF__BOOT_net;

	cy_psoc3_pins_v1_10
		#(.id("b94499f5-8157-45de-8497-096caf4159b4"),
		  .drive_mode(3'b010),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		BOOT
		 (.oe(tmpOE__BOOT_net),
		  .y({1'b0}),
		  .fb({Net_7589}),
		  .io({tmpIO_0__BOOT_net[0:0]}),
		  .siovref(tmpSIOVREF__BOOT_net),
		  .interrupt({tmpINTERRUPT_0__BOOT_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__BOOT_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_dma_v1_0
		#(.drq_type(2'b00))
		TxI2S_Zero
		 (.drq(Net_7872),
		  .trq(1'b0),
		  .nrq(Net_7801));



	cy_dma_v1_0
		#(.drq_type(2'b00))
		P_DMA
		 (.drq(Net_7639),
		  .trq(1'b0),
		  .nrq(Net_7629));



	cy_clock_v1_0
		#(.id("5bc0eb22-ef95-4b67-bca6-028543ebbabf"),
		  .source_clock_id("46B167E3-1786-4598-8688-AACCF18668D4"),
		  .divisor(13),
		  .period("0"),
		  .is_direct(0),
		  .is_digital(1))
		FRAC_CLK
		 (.clock_out(Net_7639));


	wire [0:0] tmpOE__LED1_net;
	wire [0:0] tmpFB_0__LED1_net;
	wire [0:0] tmpIO_0__LED1_net;
	wire [0:0] tmpINTERRUPT_0__LED1_net;
	electrical [0:0] tmpSIOVREF__LED1_net;

	cy_psoc3_pins_v1_10
		#(.id("5a8226f5-fba4-47ac-a6cc-8c9afee36e34"),
		  .drive_mode(3'b100),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED1
		 (.oe(tmpOE__LED1_net),
		  .y({Net_7604}),
		  .fb({tmpFB_0__LED1_net[0:0]}),
		  .io({tmpIO_0__LED1_net[0:0]}),
		  .siovref(tmpSIOVREF__LED1_net),
		  .interrupt({tmpINTERRUPT_0__LED1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__LED2_net;
	wire [0:0] tmpFB_0__LED2_net;
	wire [0:0] tmpIO_0__LED2_net;
	wire [0:0] tmpINTERRUPT_0__LED2_net;
	electrical [0:0] tmpSIOVREF__LED2_net;

	cy_psoc3_pins_v1_10
		#(.id("d10efdb0-850d-462e-8e6e-6e4960812a2e"),
		  .drive_mode(3'b100),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED2
		 (.oe(tmpOE__LED2_net),
		  .y({Net_7604}),
		  .fb({tmpFB_0__LED2_net[0:0]}),
		  .io({tmpIO_0__LED2_net[0:0]}),
		  .siovref(tmpSIOVREF__LED2_net),
		  .interrupt({tmpINTERRUPT_0__LED2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__AMP_net;
	wire [0:0] tmpFB_0__AMP_net;
	wire [0:0] tmpIO_0__AMP_net;
	wire [0:0] tmpINTERRUPT_0__AMP_net;
	electrical [0:0] tmpSIOVREF__AMP_net;

	cy_psoc3_pins_v1_10
		#(.id("bd04bde3-3e93-4434-b520-ad3839365cae"),
		  .drive_mode(3'b100),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		AMP
		 (.oe(tmpOE__AMP_net),
		  .y({Net_7265}),
		  .fb({tmpFB_0__AMP_net[0:0]}),
		  .io({tmpIO_0__AMP_net[0:0]}),
		  .siovref(tmpSIOVREF__AMP_net),
		  .interrupt({tmpINTERRUPT_0__AMP_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__AMP_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("e4856c43-b4eb-4ea9-9d35-1c119e846bcf"),
		  .source_clock_id("CEF43CFB-0213-49b9-B980-2FFAB81C5B47"),
		  .divisor(0),
		  .period("1000000000000"),
		  .is_direct(0),
		  .is_digital(1))
		BEAT_CLK
		 (.clock_out(Net_9004));


	wire [0:0] tmpOE__KEY_0_net;
	wire [0:0] tmpIO_0__KEY_0_net;
	wire [0:0] tmpINTERRUPT_0__KEY_0_net;
	electrical [0:0] tmpSIOVREF__KEY_0_net;

	cy_psoc3_pins_v1_10
		#(.id("75705a6f-89f9-4965-8f32-2843585e0f43"),
		  .drive_mode(3'b010),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		KEY_0
		 (.oe(tmpOE__KEY_0_net),
		  .y({1'b0}),
		  .fb({Net_8153}),
		  .io({tmpIO_0__KEY_0_net[0:0]}),
		  .siovref(tmpSIOVREF__KEY_0_net),
		  .interrupt({tmpINTERRUPT_0__KEY_0_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__KEY_0_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__KEY_1_net;
	wire [0:0] tmpIO_0__KEY_1_net;
	wire [0:0] tmpINTERRUPT_0__KEY_1_net;
	electrical [0:0] tmpSIOVREF__KEY_1_net;

	cy_psoc3_pins_v1_10
		#(.id("d5325bb1-04fa-4350-b9c1-03255f94e216"),
		  .drive_mode(3'b010),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		KEY_1
		 (.oe(tmpOE__KEY_1_net),
		  .y({1'b0}),
		  .fb({Net_8984}),
		  .io({tmpIO_0__KEY_1_net[0:0]}),
		  .siovref(tmpSIOVREF__KEY_1_net),
		  .interrupt({tmpINTERRUPT_0__KEY_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__KEY_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("8cf9da1f-ed72-4652-9a7f-f0f8f2e8a96a"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("10000000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Debounce_Clock
		 (.clock_out(Net_8985));


    assign Net_8751 = 1'h1;

    // -- TFF Start --
    reg  cy_tff_1;
    always @(posedge Net_8748)
    begin
        cy_tff_1 <= Net_8751^Net_8948;
    end
    assign Net_8948 = cy_tff_1;
    // -- TFF End --

    CyControlReg_v1_80 CW_Control (
        .control_1(Net_8941),
        .control_2(Net_8942),
        .control_3(Net_8943),
        .control_0(Net_12),
        .control_4(Net_8944),
        .control_5(Net_8945),
        .control_6(Net_8946),
        .control_7(Net_8947),
        .clock(Net_8948),
        .reset(1'b0));
    defparam CW_Control.Bit0Mode = 3;
    defparam CW_Control.Bit1Mode = 0;
    defparam CW_Control.Bit2Mode = 0;
    defparam CW_Control.Bit3Mode = 0;
    defparam CW_Control.Bit4Mode = 0;
    defparam CW_Control.Bit5Mode = 0;
    defparam CW_Control.Bit6Mode = 0;
    defparam CW_Control.Bit7Mode = 0;
    defparam CW_Control.BitValue = 0;
    defparam CW_Control.BusDisplay = 0;
    defparam CW_Control.ExtrReset = 1;
    defparam CW_Control.NumOutputs = 1;


	cy_clock_v1_0
		#(.id("32aa7e8a-7378-46e1-9c05-8cbffb0d8895"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("100000000000"),
		  .is_direct(0),
		  .is_digital(1))
		CW_Clock
		 (.clock_out(Net_8748));


    Timer_v2_70_3 CW_Hold_Timer (
        .reset(Net_12),
        .interrupt(Net_8934),
        .enable(1'b1),
        .trigger(1'b1),
        .capture(1'b0),
        .capture_out(Net_8938),
        .tc(Net_8939),
        .clock(Net_8748));
    defparam CW_Hold_Timer.CaptureCount = 2;
    defparam CW_Hold_Timer.CaptureCounterEnabled = 0;
    defparam CW_Hold_Timer.DeviceFamily = "PSoC3";
    defparam CW_Hold_Timer.InterruptOnCapture = 0;
    defparam CW_Hold_Timer.InterruptOnTC = 1;
    defparam CW_Hold_Timer.Resolution = 16;
    defparam CW_Hold_Timer.SiliconRevision = "3";


	cy_clock_v1_0
		#(.id("947453c9-cb23-403a-a7d1-6f71cdc49959"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("50000000"),
		  .is_direct(0),
		  .is_digital(1))
		Iambic_Clock_1
		 (.clock_out(Net_8914));


    Counter_v3_0_4 Iambic_Counter (
        .reset(Net_8915),
        .tc(Net_8926),
        .comp(Net_8927),
        .clock(Net_8914),
        .interrupt(Net_8928),
        .enable(1'b0),
        .capture(1'b0),
        .upCnt(1'b0),
        .downCnt(1'b0),
        .up_ndown(1'b1),
        .count(Net_206));
    defparam Iambic_Counter.CaptureMode = 0;
    defparam Iambic_Counter.ClockMode = 0;
    defparam Iambic_Counter.CompareMode = 0;
    defparam Iambic_Counter.CompareStatusEdgeSense = 1;
    defparam Iambic_Counter.EnableMode = 0;
    defparam Iambic_Counter.ReloadOnCapture = 0;
    defparam Iambic_Counter.ReloadOnCompare = 0;
    defparam Iambic_Counter.ReloadOnOverUnder = 1;
    defparam Iambic_Counter.ReloadOnReset = 0;
    defparam Iambic_Counter.Resolution = 32;
    defparam Iambic_Counter.RunMode = 0;
    defparam Iambic_Counter.UseInterrupt = 1;

    assign Net_8915 = 1'h0;


	cy_clock_v1_0
		#(.id("ab15c5d0-dbfa-455f-82bb-c8904705bf45"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("500000000"),
		  .is_direct(0),
		  .is_digital(1))
		Iambic_Clock_Main
		 (.clock_out(Net_8919));


    cy_sync_v1_0 Sync_1 (
        .s_in(Net_217),
        .clock(Net_8914),
        .s_out(Net_206));
    defparam Sync_1.SignalWidth = 1;

    OneTerminal OneTerminal_1 (
        .o(Net_8904));

    // -- TFF Start --
    reg  cy_tff_2;
    always @(posedge Net_8919)
    begin
        cy_tff_2 <= Net_8904^Net_217;
    end
    assign Net_217 = cy_tff_2;
    // -- TFF End --



endmodule

