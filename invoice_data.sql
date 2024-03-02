-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2024 at 01:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `vendor_name` text DEFAULT NULL,
  `vendor_address` text DEFAULT NULL,
  `customer_name` text DEFAULT NULL,
  `customer_address` text DEFAULT NULL,
  `invoice_id` text NOT NULL,
  `invoice_date` text DEFAULT NULL,
  `invoice_total` text DEFAULT NULL,
  `shipping_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `vendor_name`, `vendor_address`, `customer_name`, `customer_address`, `invoice_id`, `invoice_date`, `invoice_total`, `shipping_address`) VALUES
(18, 'CONTOSO LTD.', 'AddressValue(house_number=123, po_box=None, road=456th St, city=New York, state=NY, postal_code=10001, country_region=None, street_address=123 456th St)', 'MICROSOFT CORPORATION', 'AddressValue(house_number=123, po_box=None, road=Other St, city=Redmond, state=WA, postal_code=98052, country_region=None, street_address=123 Other St)', '', '2019-11-15', 'DocumentField(value_type=currency, value=CurrencyValue(amount=110.0, symbol=$), content=$110.00, bounding_regions=[BoundingRegion(page_number=1, polygon=[Point(x=7.3809, y=7.2186), Point(x=7.9164, y=7.2186), Point(x=7.9164, y=7.3625), Point(x=7.3809, y=7.3625)])], spans=[DocumentSpan(offset=610, length=7)], confidence=0.972)', 'AddressValue(house_number=123, po_box=None, road=Ship St, city=Redmond, state=WA, postal_code=98052, country_region=None, street_address=123 Ship St)'),
(19, 'CONTOSO LTD.', 'AddressValue(house_number=123, po_box=None, road=456th St, city=New York, state=NY, postal_code=10001, country_region=None, street_address=123 456th St)', 'MICROSOFT CORPORATION', 'AddressValue(house_number=123, po_box=None, road=Other St, city=Redmond, state=WA, postal_code=98052, country_region=None, street_address=123 Other St)', '', '2019-11-15', 'DocumentField(value_type=currency, value=CurrencyValue(amount=110.0, symbol=$), content=$110.00, bounding_regions=[BoundingRegion(page_number=1, polygon=[Point(x=7.3809, y=7.2186), Point(x=7.9164, y=7.2186), Point(x=7.9164, y=7.3625), Point(x=7.3809, y=7.3625)])], spans=[DocumentSpan(offset=610, length=7)], confidence=0.972)', 'AddressValue(house_number=123, po_box=None, road=Ship St, city=Redmond, state=WA, postal_code=98052, country_region=None, street_address=123 Ship St)'),
(20, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, 'VNRA/3356', '2023-3-23', '10547.0', NULL),
(21, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, 'VNRA/3356', '2023-3-23', '10547.0', NULL),
(22, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, 'VNRA/3356', '2023-3-23', '10547.0', NULL),
(23, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, 'VNRA/3356', '2023-3-23', '10547.0', NULL),
(24, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, 'VNRA/3356', '2023-3-23', '10547.0', NULL),
(25, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, 'VNRA/3356', '2023-3-23', '10547.0', NULL),
(26, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, 'VNRA/3356', '2023-3-23', '10547.0', NULL),
(27, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, 'VNRA/3356', '2023-3-23', '10547.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Id` int(11) NOT NULL,
  `VendorName` text DEFAULT NULL,
  `VendorAddress` text DEFAULT NULL,
  `CustomerName` text DEFAULT NULL,
  `CustomerAddress` text DEFAULT NULL,
  `InvoiceNumber` text DEFAULT NULL,
  `InvoiceDate` text DEFAULT NULL,
  `PaymentTerm` text DEFAULT NULL,
  `PurchaseOrder` text DEFAULT NULL,
  `TotalAmount` text DEFAULT NULL,
  `PreviousUnpaidBalance` text DEFAULT NULL,
  `TaxItems` text DEFAULT NULL,
  `TotalDiscount` text DEFAULT NULL,
  `ShippingAddress` text DEFAULT NULL,
  `Subtotal` text DEFAULT NULL,
  `TotalTax` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Id`, `VendorName`, `VendorAddress`, `CustomerName`, `CustomerAddress`, `InvoiceNumber`, `InvoiceDate`, `PaymentTerm`, `PurchaseOrder`, `TotalAmount`, `PreviousUnpaidBalance`, `TaxItems`, `TotalDiscount`, `ShippingAddress`, `Subtotal`, `TotalTax`) VALUES
(85, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(86, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(87, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(88, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(89, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(90, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(91, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(92, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(93, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(94, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(95, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(96, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(97, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(98, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(99, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(100, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(101, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(102, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(103, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(104, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(105, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(106, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(107, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(108, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(109, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(110, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(111, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(112, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(113, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(114, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(115, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(116, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(117, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(118, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(119, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(120, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(121, 'VNR AGRIMATRIX (2022-23)', 'house_number: None, po_box: None, road: near nandanvan post tendua dist raipur chhattisgarh, city: Pin, state: None, postal_code: 492099, country_region: None, street_address: near nandanvan post tendua dist raipur chhattisgarh', 'Vimal Chawda', NULL, NULL, '2023-03-23', NULL, 'VC/Vc-Ko/0158/2022-23', '10547', '139786', NULL, NULL, '8938', '1608.84', NULL),
(122, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(123, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(124, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(125, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(126, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(127, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(128, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(129, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL),
(130, 'CONTOSO LTD.', 'house_number: 123, po_box: None, road: 456th St, city: New York, state: NY, postal_code: 10001, country_region: None, street_address: 123 456th St', 'MICROSOFT CORPORATION', 'house_number: 123, po_box: None, road: Other St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Other St', NULL, '2019-11-15', NULL, 'PO-3333', '110', '500', NULL, 'house_number: 123, po_box: None, road: Ship St, city: Redmond, state: WA, postal_code: 98052, country_region: None, street_address: 123 Ship St', '100', '10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `Id` int(11) NOT NULL,
  `IdNumber` int(11) NOT NULL,
  `InvoiceNumber` text DEFAULT NULL,
  `ItemDescription` text DEFAULT NULL,
  `Quantity` text DEFAULT NULL,
  `Unit` text DEFAULT NULL,
  `UnitPrice` text DEFAULT NULL,
  `ProductCode` text DEFAULT NULL,
  `Amount` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`Id`, `IdNumber`, `InvoiceNumber`, `ItemDescription`, `Quantity`, `Unit`, `UnitPrice`, `ProductCode`, `Amount`) VALUES
(1, 85, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(2, 86, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(3, 87, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(4, 87, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(5, 87, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(6, 87, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(7, 87, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(8, 88, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(9, 88, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(10, 88, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(11, 88, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(12, 88, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(13, 89, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(14, 89, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(15, 89, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(16, 89, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(17, 89, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(18, 90, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(19, 90, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(20, 90, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(21, 90, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(22, 90, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(23, 91, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(24, 91, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(25, 91, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(26, 91, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(27, 91, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(28, 92, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(29, 92, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(30, 92, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(31, 92, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(32, 92, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(33, 93, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(34, 93, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(35, 93, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(36, 93, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(37, 93, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(38, 94, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(39, 94, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(40, 94, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(41, 94, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(42, 94, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(43, 95, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(44, 96, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(45, 97, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(46, 97, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(47, 97, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(48, 97, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(49, 97, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(50, 98, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(51, 99, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(52, 100, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(53, 101, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(54, 102, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(55, 103, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(56, 103, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(57, 103, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(58, 103, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(59, 103, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(60, 104, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(61, 104, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(62, 104, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(63, 104, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(64, 104, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(65, 105, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(66, 105, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(67, 105, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(68, 105, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(69, 105, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(70, 106, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(71, 107, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(72, 108, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(73, 109, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(74, 110, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(75, 111, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(76, 111, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(77, 111, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(78, 111, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(79, 111, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(80, 112, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(81, 113, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(82, 113, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(83, 113, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(84, 113, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(85, 113, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(86, 114, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(87, 114, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(88, 114, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(89, 114, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(90, 114, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(91, 115, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(92, 116, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(93, 117, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(94, 118, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(95, 119, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(96, 120, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(97, 120, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(98, 120, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(99, 120, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(100, 120, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(101, 121, NULL, '2.5SQMM Pvc Ins 3C Flat\nINDL Submersible Cable\n1100', '100', NULL, '89.38', NULL, '8938'),
(102, 121, NULL, 'Output CGST 9%', NULL, NULL, NULL, NULL, NULL),
(103, 121, NULL, 'Output SGST 9%', NULL, NULL, NULL, NULL, '804.42'),
(104, 121, NULL, '2.5 SQ UM PVC Ins 3C\nFlat Ind/ Submersible\nCable 1100', '100', 'Mo', NULL, NULL, NULL),
(105, 121, NULL, 'VG/VC-KD/0158', NULL, NULL, '2022', NULL, '23'),
(106, 123, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(107, 123, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(108, 124, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(109, 125, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(110, 126, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(111, 127, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(112, 128, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(113, 129, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100'),
(114, 130, NULL, 'Test for 23 fields', '1', NULL, '1', NULL, '100');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `invoice_id` text NOT NULL,
  `item_description` text DEFAULT NULL,
  `item_quantity` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `unit_price` text DEFAULT NULL,
  `product_code` text DEFAULT NULL,
  `amount` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `invoice_id`, `item_description`, `item_quantity`, `unit`, `unit_price`, `product_code`, `amount`) VALUES
(1, 'VNRA/3356', 'VG/VC-KD/0158', NULL, NULL, '2022.0', NULL, '23.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdNumber` (`IdNumber`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`(768));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD CONSTRAINT `invoice_detail_ibfk_1` FOREIGN KEY (`IdNumber`) REFERENCES `invoice` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
